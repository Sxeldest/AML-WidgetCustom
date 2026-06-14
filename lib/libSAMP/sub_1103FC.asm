; =========================================================
; Game Engine Function: sub_1103FC
; Address            : 0x1103FC - 0x110438
; =========================================================

1103FC:  PUSH            {R4,R5,R7,LR}
1103FE:  ADD             R7, SP, #8
110400:  SUB             SP, SP, #8
110402:  LDR             R5, =(a12vehicleskate - 0x11040A); "12VehicleSkate" ...
110404:  MOV             R4, R0
110406:  ADD             R5, PC; "12VehicleSkate"
110408:  MOV             R1, R5; s
11040A:  BL              sub_DC6DC
11040E:  MOVS            R0, #0
110410:  STR             R0, [SP,#0x10+status]
110412:  ADD             R3, SP, #0x10+status; lpstatus
110414:  MOV             R0, R5; lpmangled
110416:  MOVS            R1, #0; lpout
110418:  MOVS            R2, #0; lpoutlen
11041A:  BLX             j___cxa_demangle
11041E:  MOV             R5, R0
110420:  CBZ             R0, loc_110434
110422:  LDR             R0, [SP,#0x10+status]
110424:  CBNZ            R0, loc_11042E
110426:  MOV             R0, R4; int
110428:  MOV             R1, R5; s
11042A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11042E:  MOV             R0, R5; ptr
110430:  BLX             free
110434:  ADD             SP, SP, #8
110436:  POP             {R4,R5,R7,PC}
