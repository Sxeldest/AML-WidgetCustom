; =========================================================
; Game Engine Function: _ZN9CShotInfo10InitialiseEv
; Address            : 0x5DAFE0 - 0x5DB06C
; =========================================================

5DAFE0:  PUSH            {R7,LR}
5DAFE2:  MOV             R7, SP
5DAFE4:  LDR             R0, =(dword_A85040 - 0x5DAFF4)
5DAFE6:  VMOV.I32        Q8, #0
5DAFEA:  MOVS            R1, #0x64 ; 'd'
5DAFEC:  MOV.W           R12, #0x16
5DAFF0:  ADD             R0, PC; dword_A85040
5DAFF2:  MOVS            R3, #0
5DAFF4:  ADDS            R0, #0x29 ; ')'
5DAFF6:  MOV.W           LR, #0x3F800000
5DAFFA:  STR.W           R12, [R0,#-0x29]
5DAFFE:  SUB.W           R2, R0, #0x25 ; '%'
5DB002:  STRH.W          R3, [R0,#-1]
5DB006:  SUBS            R1, #1
5DB008:  STR.W           R3, [R0,#-0x15]
5DB00C:  STR.W           R3, [R0,#-0x11]
5DB010:  STR.W           LR, [R0,#-0xD]
5DB014:  STR.W           R3, [R0,#-9]
5DB018:  STR.W           R3, [R0,#-5]
5DB01C:  ADD.W           R0, R0, #0x2C ; ','
5DB020:  VST1.32         {D16-D17}, [R2]
5DB024:  BNE             loc_5DAFFA
5DB026:  ADR             R0, loc_5DB070
5DB028:  ADR             R1, dword_5DB090
5DB02A:  VLD1.64         {D16-D17}, [R0@128]
5DB02E:  ADR             R0, dword_5DB080
5DB030:  VLD1.64         {D18-D19}, [R0@128]
5DB034:  LDR             R0, =(_ZN9CShotInfo14ms_afRandTableE_ptr - 0x5DB040)
5DB036:  VLD1.64         {D20-D21}, [R1@128]
5DB03A:  ADR             R1, dword_5DB0A0
5DB03C:  ADD             R0, PC; _ZN9CShotInfo14ms_afRandTableE_ptr
5DB03E:  VLD1.64         {D22-D23}, [R1@128]
5DB042:  ADR             R1, dword_5DB0B0
5DB044:  LDR             R0, [R0]; CShotInfo::ms_afRandTable ...
5DB046:  VLD1.64         {D24-D25}, [R1@128]
5DB04A:  MOV             R1, R0
5DB04C:  VST1.32         {D16-D17}, [R1]!
5DB050:  VST1.32         {D18-D19}, [R1]
5DB054:  ADD.W           R1, R0, #0x20 ; ' '
5DB058:  VST1.32         {D20-D21}, [R1]
5DB05C:  ADD.W           R1, R0, #0x30 ; '0'
5DB060:  ADDS            R0, #0x40 ; '@'
5DB062:  VST1.32         {D22-D23}, [R1]
5DB066:  VST1.32         {D24-D25}, [R0]
5DB06A:  POP             {R7,PC}
