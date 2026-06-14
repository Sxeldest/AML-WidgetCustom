; =========================================================
; Game Engine Function: sub_10AF9C
; Address            : 0x10AF9C - 0x10B04C
; =========================================================

10AF9C:  PUSH            {R4-R7,LR}
10AF9E:  ADD             R7, SP, #0xC
10AFA0:  PUSH.W          {R8,R9,R11}
10AFA4:  SUB             SP, SP, #8
10AFA6:  LDR             R5, =(dword_263080 - 0x10AFB2)
10AFA8:  MOV             R6, R0
10AFAA:  MOV             R8, R2
10AFAC:  MOV             R9, R1
10AFAE:  ADD             R5, PC; dword_263080
10AFB0:  LDR             R0, [R5,#(dword_263084 - 0x263080)]; this
10AFB2:  CBZ             R0, loc_10AFFA
10AFB4:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10AFB8:  STR             R0, [SP,#0x20+var_1C]
10AFBA:  CBZ             R0, loc_10AFFA
10AFBC:  LDR             R5, [R5]
10AFBE:  MOV             R4, R0
10AFC0:  STR             R5, [SP,#0x20+var_20]
10AFC2:  CBZ             R5, loc_10AFFE
10AFC4:  BL              sub_10B314
10AFC8:  CBZ             R0, loc_10AFFE
10AFCA:  BL              sub_10B314
10AFCE:  LDR.W           R0, [R0,#0x444]
10AFD2:  CBZ             R0, loc_10AFFE
10AFD4:  BL              sub_10B380
10AFD8:  CBZ             R0, loc_10AFFE
10AFDA:  BL              sub_10B4A0
10AFDE:  BL              sub_10B314
10AFE2:  LDR             R1, [R5]
10AFE4:  LDR.W           R0, [R0,#0x444]
10AFE8:  LDR             R2, [R1,#0x38]
10AFEA:  LDR             R1, [R0,#0x44]
10AFEC:  MOV             R0, R5
10AFEE:  BLX             R2
10AFF0:  MOVS            R5, #0
10AFF2:  MOVS            R0, #0
10AFF4:  BL              sub_163C8C
10AFF8:  B               loc_10B000
10AFFA:  MOVS            R5, #1
10AFFC:  B               loc_10B028
10AFFE:  MOVS            R5, #1
10B000:  ADDS            R0, R4, #4
10B002:  DMB.W           ISH
10B006:  LDREX.W         R1, [R0]
10B00A:  SUBS            R2, R1, #1
10B00C:  STREX.W         R3, R2, [R0]
10B010:  CMP             R3, #0
10B012:  BNE             loc_10B006
10B014:  DMB.W           ISH
10B018:  CBNZ            R1, loc_10B028
10B01A:  LDR             R0, [R4]
10B01C:  LDR             R1, [R0,#8]
10B01E:  MOV             R0, R4
10B020:  BLX             R1
10B022:  MOV             R0, R4; this
10B024:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10B028:  CBZ             R5, loc_10B044
10B02A:  LDR             R0, =(off_263060 - 0x10B030)
10B02C:  ADD             R0, PC; off_263060
10B02E:  LDR             R3, [R0]
10B030:  CBZ             R3, loc_10B044
10B032:  MOV             R0, R6
10B034:  MOV             R1, R9
10B036:  MOV             R2, R8
10B038:  ADD             SP, SP, #8
10B03A:  POP.W           {R8,R9,R11}
10B03E:  POP.W           {R4-R7,LR}
10B042:  BX              R3
10B044:  ADD             SP, SP, #8
10B046:  POP.W           {R8,R9,R11}
10B04A:  POP             {R4-R7,PC}
