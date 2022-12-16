// https://github.com/antmicro/verilator-dynamic-scheduler-examples/blob/main/examples/clock/main.cpp
#include <verilated.h>
#include <Vclock.h>
#include <unistd.h>

vluint64_t main_time = 0;
double sc_time_stamp() { return main_time; }

int main(int argc, char *argv[]) {
	Verilated::commandArgs(argc, argv);
	Vclock *top = new Vclock;
	while (!Verilated::gotFinish()) {
		top->eval();
		main_time = top->nextTimeSlot();
	}
	top->final();
	delete top;
	return 0;
}
