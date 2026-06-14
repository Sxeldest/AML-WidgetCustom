; =========================================================
; Game Engine Function: _ZN13CAEDataStream4SeekEli
; Address            : 0x3953C6 - 0x395402
; =========================================================

3953C6:  PUSH            {R4,R5,R7,LR}
3953C8:  ADD             R7, SP, #8
3953CA:  MOV             R5, R1
3953CC:  MOV             R4, R0
3953CE:  CMP             R2, #2
3953D0:  BEQ             loc_3953E0
3953D2:  CMP             R2, #1
3953D4:  BEQ             loc_3953EA
3953D6:  CMP             R2, #0
3953D8:  ITT EQ
3953DA:  LDREQ           R0, [R4,#0x14]
3953DC:  ADDEQ           R5, R0
3953DE:  B               loc_3953F2
3953E0:  LDRD.W          R0, R1, [R4,#0x14]
3953E4:  SUBS            R1, R1, R5
3953E6:  ADDS            R5, R1, R0
3953E8:  B               loc_3953F2
3953EA:  LDR             R0, [R4,#4]; void *
3953EC:  BLX             j__Z18OS_FileGetPositionPv; OS_FileGetPosition(void *)
3953F0:  ADD             R5, R0
3953F2:  LDR             R0, [R4,#4]; this
3953F4:  MOV             R1, R5; offset
3953F6:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
3953FA:  LDR             R0, [R4,#0x14]
3953FC:  SUBS            R0, R5, R0
3953FE:  STR             R0, [R4,#0x10]
395400:  POP             {R4,R5,R7,PC}
