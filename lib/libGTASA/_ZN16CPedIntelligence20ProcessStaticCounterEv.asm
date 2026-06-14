; =========================================================
; Game Engine Function: _ZN16CPedIntelligence20ProcessStaticCounterEv
; Address            : 0x4C0D38 - 0x4C0E50
; =========================================================

4C0D38:  PUSH            {R4,R5,R7,LR}
4C0D3A:  ADD             R7, SP, #8
4C0D3C:  MOV             R4, R0
4C0D3E:  ADDS            R0, R4, #4; this
4C0D40:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4C0D44:  CBZ             R0, loc_4C0DA4
4C0D46:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4C0D4A:  CBZ             R0, loc_4C0DA4
4C0D4C:  LDR             R0, [R4]
4C0D4E:  LDR.W           R0, [R0,#0x440]
4C0D52:  ADDS            R0, #4; this
4C0D54:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4C0D58:  MOV             R5, R0
4C0D5A:  CBZ             R5, loc_4C0DA4
4C0D5C:  MOV             R0, R5; this
4C0D5E:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4C0D62:  CBZ             R0, loc_4C0DA4
4C0D64:  LDR             R0, [R5,#8]
4C0D66:  CMP             R0, #7
4C0D68:  BHI             loc_4C0DA4
4C0D6A:  MOVS            R1, #1
4C0D6C:  LSL.W           R0, R1, R0
4C0D70:  TST.W           R0, #0xD0
4C0D74:  BEQ             loc_4C0DA4
4C0D76:  LDR             R0, [R4]
4C0D78:  LDR.W           R1, [R4,#0x27C]
4C0D7C:  LDR.W           R2, [R0,#0xE0]
4C0D80:  CBZ             R2, loc_4C0DBC
4C0D82:  CMP             R1, #5
4C0D84:  BCC             loc_4C0DD4
4C0D86:  LDR             R1, [R0,#0x14]
4C0D88:  ADD.W           R2, R1, #0x30 ; '0'
4C0D8C:  CMP             R1, #0
4C0D8E:  IT EQ
4C0D90:  ADDEQ           R2, R0, #4
4C0D92:  VLDR            D16, [R2]
4C0D96:  LDR             R1, [R2,#8]
4C0D98:  STR.W           R1, [R4,#0x288]
4C0D9C:  MOVS            R1, #0
4C0D9E:  VSTR            D16, [R4,#0x280]
4C0DA2:  B               loc_4C0DDA
4C0DA4:  LDR.W           R0, [R4,#0x27C]
4C0DA8:  MOVS            R1, #0
4C0DAA:  ADDS            R0, #1
4C0DAC:  ADDS            R2, R0, #1
4C0DAE:  IT EQ
4C0DB0:  MOVEQ           R0, #4
4C0DB2:  STR.W           R1, [R4,#0x278]
4C0DB6:  STR.W           R0, [R4,#0x27C]
4C0DBA:  POP             {R4,R5,R7,PC}
4C0DBC:  ADDS            R1, #1
4C0DBE:  ADDS            R2, R1, #1
4C0DC0:  BEQ             loc_4C0DD8
4C0DC2:  CMP             R1, #5
4C0DC4:  STR.W           R1, [R4,#0x27C]
4C0DC8:  ITTT CS
4C0DCA:  MOVCS           R0, #0
4C0DCC:  STRCS.W         R0, [R4,#0x278]
4C0DD0:  POPCS           {R4,R5,R7,PC}
4C0DD2:  B               loc_4C0DDE
4C0DD4:  MOVS            R1, #0
4C0DD6:  B               loc_4C0DDA
4C0DD8:  MOVS            R1, #4
4C0DDA:  STR.W           R1, [R4,#0x27C]
4C0DDE:  LDR             R2, [R0,#0x14]
4C0DE0:  ADDS            R1, R0, #4
4C0DE2:  VLDR            S0, [R4,#0x280]
4C0DE6:  CMP             R2, #0
4C0DE8:  MOV             R3, R1
4C0DEA:  IT NE
4C0DEC:  ADDNE.W         R3, R2, #0x30 ; '0'
4C0DF0:  VLDR            D16, [R4,#0x284]
4C0DF4:  VLDR            S2, [R3]
4C0DF8:  VLDR            D17, [R3,#4]
4C0DFC:  VSUB.F32        S0, S2, S0
4C0E00:  VSUB.F32        D16, D17, D16
4C0E04:  VMUL.F32        D1, D16, D16
4C0E08:  VMUL.F32        S0, S0, S0
4C0E0C:  VADD.F32        S0, S0, S2
4C0E10:  VADD.F32        S0, S0, S3
4C0E14:  VLDR            S2, =0.0625
4C0E18:  VCMPE.F32       S0, S2
4C0E1C:  VMRS            APSR_nzcv, FPSCR
4C0E20:  BGE             loc_4C0E2E
4C0E22:  LDR.W           R0, [R4,#0x278]
4C0E26:  ADDS            R0, #1
4C0E28:  STR.W           R0, [R4,#0x278]
4C0E2C:  POP             {R4,R5,R7,PC}
4C0E2E:  MOVS            R3, #0
4C0E30:  ADD.W           R2, R4, #0x280
4C0E34:  STR.W           R3, [R4,#0x278]
4C0E38:  LDR             R0, [R0,#0x14]
4C0E3A:  CMP             R0, #0
4C0E3C:  IT NE
4C0E3E:  ADDNE.W         R1, R0, #0x30 ; '0'
4C0E42:  VLDR            D16, [R1]
4C0E46:  LDR             R0, [R1,#8]
4C0E48:  STR             R0, [R2,#8]
4C0E4A:  VSTR            D16, [R2]
4C0E4E:  POP             {R4,R5,R7,PC}
