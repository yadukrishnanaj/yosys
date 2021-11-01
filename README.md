# yosys
read_verilog orgate.v andgate.v top.v
hierarchy -check -top top
dot -Tpng filename.dot -o filename.png
proc
opt
# read design
read -sv tests/simple/fiedler-cooley.v
hierarchy -top up3down5

# the high-level stuff
proc; fsm; opt; memory; opt

# mapping to internal cell library
techmap; opt

# mapping flip-flops to mycells.lib
dfflibmap -liberty mycells.lib

# mapping logic to mycells.lib
abc -liberty mycells.lib

# cleanup
clean
