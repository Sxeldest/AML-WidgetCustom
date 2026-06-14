; =========================================================
; Game Engine Function: sub_10AEE4
; Address            : 0x10AEE4 - 0x10AF88
; =========================================================

10AEE4:  PUSH            {R4-R7,LR}
10AEE6:  ADD             R7, SP, #0xC
10AEE8:  PUSH.W          {R8,R9,R11}
10AEEC:  SUB             SP, SP, #8
10AEEE:  LDR             R5, =(dword_263080 - 0x10AEFA)
10AEF0:  MOV             R6, R0
10AEF2:  MOV             R8, R2
10AEF4:  MOV             R9, R1
10AEF6:  ADD             R5, PC; dword_263080
10AEF8:  LDR             R0, [R5,#(dword_263084 - 0x263080)]; this
10AEFA:  CBZ             R0, loc_10AF36
10AEFC:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10AF00:  STR             R0, [SP,#0x20+var_1C]
10AF02:  CBZ             R0, loc_10AF36
10AF04:  LDR             R5, [R5]
10AF06:  MOV             R4, R0
10AF08:  STR             R5, [SP,#0x20+var_20]
10AF0A:  CBZ             R5, loc_10AF3A
10AF0C:  BL              sub_10B314
10AF10:  CBZ             R0, loc_10AF3A
10AF12:  BL              sub_10B380
10AF16:  CBZ             R0, loc_10AF3A
10AF18:  BL              sub_10B4A0
10AF1C:  BL              sub_10B314
10AF20:  LDR             R2, [R5]
10AF22:  LDR.W           R1, [R0,#0x54C]
10AF26:  LDR             R2, [R2,#0x34]
10AF28:  MOV             R0, R5
10AF2A:  BLX             R2
10AF2C:  MOVS            R5, #0
10AF2E:  MOVS            R0, #0
10AF30:  BL              sub_163C8C
10AF34:  B               loc_10AF3C
10AF36:  MOVS            R5, #1
10AF38:  B               loc_10AF64
10AF3A:  MOVS            R5, #1
10AF3C:  ADDS            R0, R4, #4
10AF3E:  DMB.W           ISH
10AF42:  LDREX.W         R1, [R0]
10AF46:  SUBS            R2, R1, #1
10AF48:  STREX.W         R3, R2, [R0]
10AF4C:  CMP             R3, #0
10AF4E:  BNE             loc_10AF42
10AF50:  DMB.W           ISH
10AF54:  CBNZ            R1, loc_10AF64
10AF56:  LDR             R0, [R4]
10AF58:  LDR             R1, [R0,#8]
10AF5A:  MOV             R0, R4
10AF5C:  BLX             R1
10AF5E:  MOV             R0, R4; this
10AF60:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10AF64:  CBZ             R5, loc_10AF80
10AF66:  LDR             R0, =(off_26305C - 0x10AF6C)
10AF68:  ADD             R0, PC; off_26305C
10AF6A:  LDR             R3, [R0]
10AF6C:  CBZ             R3, loc_10AF80
10AF6E:  MOV             R0, R6
10AF70:  MOV             R1, R9
10AF72:  MOV             R2, R8
10AF74:  ADD             SP, SP, #8
10AF76:  POP.W           {R8,R9,R11}
10AF7A:  POP.W           {R4-R7,LR}
10AF7E:  BX              R3
10AF80:  ADD             SP, SP, #8
10AF82:  POP.W           {R8,R9,R11}
10AF86:  POP             {R4-R7,PC}
