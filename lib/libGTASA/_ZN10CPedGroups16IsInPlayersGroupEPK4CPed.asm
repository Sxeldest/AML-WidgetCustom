; =========================================================
; Game Engine Function: _ZN10CPedGroups16IsInPlayersGroupEPK4CPed
; Address            : 0x4B7A9C - 0x4B7B3A
; =========================================================

4B7A9C:  LDR.W           R1, [R0,#0x444]
4B7AA0:  CMP             R1, #0
4B7AA2:  ITT NE
4B7AA4:  MOVNE           R0, #0
4B7AA6:  BXNE            LR
4B7AA8:  PUSH            {R4-R7,LR}
4B7AAA:  ADD             R7, SP, #0x14+var_8
4B7AAC:  PUSH.W          {R8}
4B7AB0:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B7AB6)
4B7AB2:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B7AB4:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B7AB6:  ADD.W           LR, R1, #0xC
4B7ABA:  ADD.W           R8, R1, #0x1C
4B7ABE:  MOVS            R1, #0
4B7AC0:  LDM.W           LR, {R2,R3,R12,LR}
4B7AC4:  CMP             R3, R0
4B7AC6:  MOV.W           R3, #0
4B7ACA:  LDM.W           R8, {R4-R6,R8}
4B7ACE:  IT EQ
4B7AD0:  MOVEQ           R3, #1
4B7AD2:  CMP             R2, R0
4B7AD4:  MOV.W           R2, #0
4B7AD8:  IT EQ
4B7ADA:  MOVEQ           R2, #1
4B7ADC:  CMP             R12, R0
4B7ADE:  ORR.W           R2, R2, R3
4B7AE2:  MOV.W           R3, #0
4B7AE6:  IT EQ
4B7AE8:  MOVEQ           R3, #1
4B7AEA:  CMP             LR, R0
4B7AEC:  ORR.W           R2, R2, R3
4B7AF0:  MOV.W           R3, #0
4B7AF4:  IT EQ
4B7AF6:  MOVEQ           R3, #1
4B7AF8:  CMP             R4, R0
4B7AFA:  ORR.W           R2, R2, R3
4B7AFE:  MOV.W           R3, #0
4B7B02:  IT EQ
4B7B04:  MOVEQ           R3, #1
4B7B06:  CMP             R5, R0
4B7B08:  ORR.W           R2, R2, R3
4B7B0C:  MOV.W           R3, #0
4B7B10:  IT EQ
4B7B12:  MOVEQ           R3, #1
4B7B14:  CMP             R6, R0
4B7B16:  ORR.W           R2, R2, R3
4B7B1A:  MOV.W           R3, #0
4B7B1E:  IT EQ
4B7B20:  MOVEQ           R3, #1
4B7B22:  CMP             R8, R0
4B7B24:  ORR.W           R2, R2, R3
4B7B28:  IT EQ
4B7B2A:  MOVEQ           R1, #1
4B7B2C:  ORR.W           R0, R2, R1
4B7B30:  AND.W           R0, R0, #1
4B7B34:  POP.W           {R8}
4B7B38:  POP             {R4-R7,PC}
