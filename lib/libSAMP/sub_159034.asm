; =========================================================
; Game Engine Function: sub_159034
; Address            : 0x159034 - 0x1590BE
; =========================================================

159034:  PUSH            {R4,R5,R7,LR}
159036:  ADD             R7, SP, #8
159038:  SUB             SP, SP, #8
15903A:  MOV             R4, R0
15903C:  MOV             R0, R1
15903E:  BL              sub_164B44
159042:  CBZ             R0, loc_15907A
159044:  LDRD.W          R0, R1, [R4,#8]
159048:  MOV.W           R2, #0x148000
15904C:  LDR             R3, =(sub_159024+1 - 0x159054)
15904E:  STR             R4, [SP,#0x10+var_10]
159050:  ADD             R3, PC; sub_159024
159052:  BL              sub_164B6C
159056:  CBZ             R0, loc_159094
159058:  MOV             R5, R0
15905A:  MOVS            R0, #4; unsigned int
15905C:  BLX             j__Znwj; operator new(uint)
159060:  MOV             R1, R0
159062:  STR             R5, [R0]
159064:  ADD.W           R0, R4, #0x24 ; '$'
159068:  BL              sub_158FC0
15906C:  LDR             R1, [R4,#0x14]
15906E:  MOV             R0, R4
159070:  ADD             SP, SP, #8
159072:  POP.W           {R4,R5,R7,LR}
159076:  B.W             sub_1590E0
15907A:  MOVS            R0, #0x18; thrown_size
15907C:  BLX             j___cxa_allocate_exception
159080:  MOV             R4, R0
159082:  BL              sub_1649EC
159086:  LDR             R1, =(aBassRecordinit - 0x15908E); "BASS_RecordInit" ...
159088:  MOV             R2, R0
15908A:  ADD             R1, PC; "BASS_RecordInit"
15908C:  MOV             R0, R4
15908E:  BL              sub_1545C8
159092:  B               loc_1590B0
159094:  BL              sub_164B58
159098:  MOVS            R0, #0x18; thrown_size
15909A:  BLX             j___cxa_allocate_exception
15909E:  MOV             R4, R0
1590A0:  BL              sub_1649EC
1590A4:  LDR             R1, =(aBassRecordstar - 0x1590AC); "BASS_RecordStart" ...
1590A6:  MOV             R2, R0
1590A8:  ADD             R1, PC; "BASS_RecordStart"
1590AA:  MOV             R0, R4
1590AC:  BL              sub_1545C8
1590B0:  LDR             R1, =(_ZTI13BassException - 0x1590BA); `typeinfo for'BassException ...
1590B2:  MOV             R0, R4; void *
1590B4:  LDR             R2, =(sub_15466C+1 - 0x1590BC)
1590B6:  ADD             R1, PC; lptinfo
1590B8:  ADD             R2, PC; sub_15466C ; void (*)(void *)
1590BA:  BLX             j___cxa_throw
