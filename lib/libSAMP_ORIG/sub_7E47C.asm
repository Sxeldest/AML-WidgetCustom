; =========================================================
; Game Engine Function: sub_7E47C
; Address            : 0x7E47C - 0x7E510
; =========================================================

7E47C:  PUSH            {R4,R5,R7,LR}
7E47E:  ADD             R7, SP, #8
7E480:  SUB             SP, SP, #0x10
7E482:  LDR             R4, =(byte_1A45F3 - 0x7E48A)
7E484:  LDR             R0, =(__stack_chk_guard_ptr - 0x7E48C)
7E486:  ADD             R4, PC; byte_1A45F3
7E488:  ADD             R0, PC; __stack_chk_guard_ptr
7E48A:  LDR             R0, [R0]; __stack_chk_guard
7E48C:  LDR             R0, [R0]
7E48E:  STR             R0, [SP,#0x18+var_C]
7E490:  LDRB            R0, [R4]
7E492:  CBZ             R0, loc_7E4AC
7E494:  MOVS            R0, #0
7E496:  LDR             R1, [SP,#0x18+var_C]
7E498:  LDR             R2, =(__stack_chk_guard_ptr - 0x7E49E)
7E49A:  ADD             R2, PC; __stack_chk_guard_ptr
7E49C:  LDR             R2, [R2]; __stack_chk_guard
7E49E:  LDR             R2, [R2]
7E4A0:  CMP             R2, R1
7E4A2:  ITT EQ
7E4A4:  ADDEQ           SP, SP, #0x10
7E4A6:  POPEQ           {R4,R5,R7,PC}
7E4A8:  BLX             __stack_chk_fail
7E4AC:  LDR             R0, =(aSvDbgNetworkIn - 0x7E4B2); "[sv:dbg:network:init] : module initiali"... ...
7E4AE:  ADD             R0, PC; "[sv:dbg:network:init] : module initiali"...
7E4B0:  BL              sub_80664
7E4B4:  MOVS            R0, #2; domain
7E4B6:  MOVS            R1, #2; type
7E4B8:  MOVS            R2, #0x11; protocol
7E4BA:  BLX             socket
7E4BE:  LDR             R5, =(dword_116E00 - 0x7E4C6)
7E4C0:  ADDS            R1, R0, #1
7E4C2:  ADD             R5, PC; dword_116E00
7E4C4:  STR             R0, [R5]
7E4C6:  BEQ             loc_7E494
7E4C8:  MOV.W           R1, #0x10000
7E4CC:  STR             R1, [SP,#0x18+optval]
7E4CE:  MOV.W           R1, #0x200000
7E4D2:  STR             R1, [SP,#0x18+var_14]
7E4D4:  MOVS            R1, #4
7E4D6:  ADD             R3, SP, #0x18+optval; optval
7E4D8:  STR             R1, [SP,#0x18+optlen]; optlen
7E4DA:  MOVS            R1, #1; level
7E4DC:  MOVS            R2, #7; optname
7E4DE:  BLX             setsockopt
7E4E2:  ADDS            R0, #1
7E4E4:  BEQ             loc_7E494
7E4E6:  LDR             R0, [R5]; fd
7E4E8:  MOVS            R1, #4
7E4EA:  ADD             R3, SP, #0x18+var_14; optval
7E4EC:  STR             R1, [SP,#0x18+optlen]; optlen
7E4EE:  MOVS            R1, #1; level
7E4F0:  MOVS            R2, #8; optname
7E4F2:  BLX             setsockopt
7E4F6:  ADDS            R0, #1
7E4F8:  BEQ             loc_7E494
7E4FA:  LDR             R1, =(dword_1A45F4 - 0x7E504)
7E4FC:  MOVS            R2, #0
7E4FE:  LDR             R0, =(aSvDbgNetworkIn_0 - 0x7E506); "[sv:dbg:network:init] : module initiali"... ...
7E500:  ADD             R1, PC; dword_1A45F4
7E502:  ADD             R0, PC; "[sv:dbg:network:init] : module initiali"...
7E504:  STR             R2, [R1]
7E506:  BL              sub_80664
7E50A:  MOVS            R0, #1
7E50C:  STRB            R0, [R4]
7E50E:  B               loc_7E496
