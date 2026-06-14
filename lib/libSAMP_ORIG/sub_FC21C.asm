; =========================================================
; Game Engine Function: sub_FC21C
; Address            : 0xFC21C - 0xFC24E
; =========================================================

FC21C:  PUSH            {R0-R5,R7,LR}
FC21E:  ADD             R7, SP, #0x18
FC220:  ADD             R5, SP, #0x18+var_14
FC222:  LDR             R2, =(aNoConversion - 0xFC22A); ": no conversion" ...
FC224:  MOV             R1, R0; int
FC226:  ADD             R2, PC; ": no conversion"
FC228:  MOV             R0, R5; int
FC22A:  BL              sub_77B7C
FC22E:  MOVS            R0, #8; thrown_size
FC230:  BLX             j___cxa_allocate_exception
FC234:  MOV             R4, R0
FC236:  MOV             R1, R5
FC238:  BL              sub_FC26C
FC23C:  LDR             R0, =(_ZTISt16invalid_argument_ptr - 0xFC242)
FC23E:  ADD             R0, PC; _ZTISt16invalid_argument_ptr
FC240:  LDR             R1, [R0]; lptinfo
FC242:  LDR             R0, =(_ZNSt16invalid_argumentD2Ev_ptr_0 - 0xFC248)
FC244:  ADD             R0, PC; _ZNSt16invalid_argumentD2Ev_ptr_0
FC246:  LDR             R2, [R0]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
FC248:  MOV             R0, R4; void *
FC24A:  BLX             j___cxa_throw
