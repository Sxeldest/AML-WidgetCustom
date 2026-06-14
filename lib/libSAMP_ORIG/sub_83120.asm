; =========================================================
; Game Engine Function: sub_83120
; Address            : 0x83120 - 0x831E2
; =========================================================

83120:  PUSH            {R4-R7,LR}
83122:  ADD             R7, SP, #0xC
83124:  PUSH.W          {R8}
83128:  LDR             R0, =(byte_1A49FC - 0x8312E)
8312A:  ADD             R0, PC; byte_1A49FC
8312C:  MOV             R8, R0
8312E:  LDRB            R0, [R0]
83130:  CMP             R0, #0
83132:  BEQ             loc_831DC
83134:  LDR             R0, =(aSvDbgRecordFre - 0x8313A); "[sv:dbg:record:free] : module releasing"... ...
83136:  ADD             R0, PC; "[sv:dbg:record:free] : module releasing"...
83138:  BL              sub_80664
8313C:  BL              sub_83224
83140:  LDR             R0, =(off_114A88 - 0x83148)
83142:  LDR             R1, =(dword_1A4A1C - 0x8314A)
83144:  ADD             R0, PC; off_114A88
83146:  ADD             R1, PC; dword_1A4A1C
83148:  LDR             R5, [R0]; off_1ABEE8
8314A:  LDR             R0, [R1]
8314C:  LDR             R1, [R5]
8314E:  BLX             R1
83150:  LDR             R0, =(off_114D3C - 0x83156)
83152:  ADD             R0, PC; off_114D3C
83154:  LDR             R0, [R0]; off_1ABF38
83156:  LDR             R0, [R0]
83158:  BLX             R0
8315A:  MOV             R0, R8
8315C:  LDRB.W          R0, [R8]
83160:  LDR             R6, =(dword_1A4A20 - 0x83166)
83162:  ADD             R6, PC; dword_1A4A20
83164:  CBZ             R0, loc_83180
83166:  LDR             R4, =(byte_1A4A24 - 0x8316C)
83168:  ADD             R4, PC; byte_1A4A24
8316A:  LDRB            R0, [R4]
8316C:  CBZ             R0, loc_83180
8316E:  LDR             R0, =(aSvDbgRecordSto - 0x83174); "[sv:dbg:record:stopchecking] : checking"... ...
83170:  ADD             R0, PC; "[sv:dbg:record:stopchecking] : checking"...
83172:  BL              sub_80664
83176:  LDR             R0, [R6]
83178:  LDR             R1, [R5]
8317A:  BLX             R1
8317C:  MOVS            R0, #0
8317E:  STRB            R0, [R4]
83180:  LDR             R0, =(off_114AAC - 0x83186)
83182:  ADD             R0, PC; off_114AAC
83184:  LDR             R1, [R0]; off_1ABF08
83186:  LDR             R0, [R6]
83188:  LDR             R1, [R1]
8318A:  BLX             R1
8318C:  LDR             R0, =(dword_1A4A18 - 0x83192)
8318E:  ADD             R0, PC; dword_1A4A18
83190:  LDR             R0, [R0]
83192:  BLX             j_opus_encoder_destroy
83196:  LDR             R5, =(dword_1A4A00 - 0x831A4)
83198:  MOV.W           R4, #0xFFFFFFFF
8319C:  LDR             R1, =(dword_1A4A0C - 0x831AA)
8319E:  LDR             R2, =(dword_116E18 - 0x831AC)
831A0:  ADD             R5, PC; dword_1A4A00
831A2:  LDRD.W          R6, R0, [R5]
831A6:  ADD             R1, PC; dword_1A4A0C
831A8:  ADD             R2, PC; dword_116E18
831AA:  LDR             R3, [R1]
831AC:  CMP             R0, R6
831AE:  STR             R4, [R2]
831B0:  STR             R3, [R1,#(dword_1A4A10 - 0x1A4A0C)]
831B2:  BEQ             loc_831CC
831B4:  MOV             R4, R0
831B6:  LDRB.W          R1, [R4,#-0xC]!
831BA:  LSLS            R1, R1, #0x1F
831BC:  ITT NE
831BE:  LDRNE.W         R0, [R0,#-4]; void *
831C2:  BLXNE           j__ZdlPv; operator delete(void *)
831C6:  CMP             R4, R6
831C8:  MOV             R0, R4
831CA:  BNE             loc_831B6
831CC:  LDR             R0, =(aSvDbgRecordFre_0 - 0x831D4); "[sv:dbg:record:free] : module released" ...
831CE:  STR             R6, [R5,#(dword_1A4A04 - 0x1A4A00)]
831D0:  ADD             R0, PC; "[sv:dbg:record:free] : module released"
831D2:  BL              sub_80664
831D6:  MOVS            R0, #0
831D8:  STRB.W          R0, [R8]
831DC:  POP.W           {R8}
831E0:  POP             {R4-R7,PC}
