; =========================================================
; Game Engine Function: _ZN6CWorld19RemoveStaticObjectsEv
; Address            : 0x42BB58 - 0x42BC6A
; =========================================================

42BB58:  PUSH            {R4-R7,LR}
42BB5A:  ADD             R7, SP, #0xC
42BB5C:  PUSH.W          {R8-R11}
42BB60:  SUB             SP, SP, #4
42BB62:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42BB6C)
42BB64:  MOV.W           R11, #0
42BB68:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42BB6A:  LDR.W           R9, [R0]; CWorld::ms_aSectors ...
42BB6E:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42BB74)
42BB70:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42BB72:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42BB74:  STR             R0, [SP,#0x20+var_20]
42BB76:  LDR.W           R6, [R9,R11,LSL#3]
42BB7A:  ADD.W           R8, R9, R11,LSL#3
42BB7E:  CBZ             R6, loc_42BBB4
42BB80:  LDRD.W          R5, R4, [R6]
42BB84:  LDR             R0, [R5]
42BB86:  LDR             R1, [R0,#0x10]
42BB88:  MOV             R0, R5
42BB8A:  BLX             R1
42BB8C:  LDRB.W          R0, [R5,#0x3A]
42BB90:  AND.W           R0, R0, #7
42BB94:  SUBS            R0, #2
42BB96:  UXTB            R0, R0
42BB98:  CMP             R0, #2
42BB9A:  ITT LS
42BB9C:  MOVLS           R0, R5; this
42BB9E:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
42BBA2:  LDR             R0, [R6]
42BBA4:  CMP             R0, #0
42BBA6:  ITTT NE
42BBA8:  LDRNE           R1, [R0]
42BBAA:  LDRNE           R1, [R1,#4]
42BBAC:  BLXNE           R1
42BBAE:  CMP             R4, #0
42BBB0:  MOV             R6, R4
42BBB2:  BNE             loc_42BB80
42BBB4:  LDR             R0, [SP,#0x20+var_20]
42BBB6:  ADD.W           R5, R0, R11,LSL#3
42BBBA:  LDR.W           R4, [R5,#4]!
42BBBE:  CBZ             R4, loc_42BBF6
42BBC0:  LDRD.W          R6, R10, [R4]
42BBC4:  LDR             R0, [R6]
42BBC6:  LDR             R1, [R0,#0x10]
42BBC8:  MOV             R0, R6
42BBCA:  BLX             R1
42BBCC:  LDRB.W          R0, [R6,#0x3A]
42BBD0:  AND.W           R0, R0, #7
42BBD4:  SUBS            R0, #2
42BBD6:  UXTB            R0, R0
42BBD8:  CMP             R0, #2
42BBDA:  ITT LS
42BBDC:  MOVLS           R0, R6; this
42BBDE:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
42BBE2:  LDR             R0, [R4]
42BBE4:  CMP             R0, #0
42BBE6:  ITTT NE
42BBE8:  LDRNE           R1, [R0]
42BBEA:  LDRNE           R1, [R1,#4]
42BBEC:  BLXNE           R1
42BBEE:  CMP.W           R10, #0
42BBF2:  MOV             R4, R10
42BBF4:  BNE             loc_42BBC0
42BBF6:  MOV             R0, R8; this
42BBF8:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
42BBFC:  MOV             R0, R5; this
42BBFE:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
42BC02:  ADD.W           R11, R11, #1
42BC06:  CMP.W           R11, #0x3840
42BC0A:  BNE             loc_42BB76
42BC0C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42BC16)
42BC0E:  MOV.W           R9, #0
42BC12:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42BC14:  LDR.W           R8, [R0]; CWorld::ms_aRepeatSectors ...
42BC18:  ADD.W           R0, R9, R9,LSL#1
42BC1C:  ADD.W           R0, R8, R0,LSL#2
42BC20:  LDR             R6, [R0,#8]
42BC22:  CBZ             R6, loc_42BC58
42BC24:  LDRD.W          R4, R5, [R6]
42BC28:  LDR             R0, [R4]
42BC2A:  LDR             R1, [R0,#0x10]
42BC2C:  MOV             R0, R4
42BC2E:  BLX             R1
42BC30:  LDRB.W          R0, [R4,#0x3A]
42BC34:  AND.W           R0, R0, #7
42BC38:  SUBS            R0, #2
42BC3A:  UXTB            R0, R0
42BC3C:  CMP             R0, #2
42BC3E:  ITT LS
42BC40:  MOVLS           R0, R4; this
42BC42:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
42BC46:  LDR             R0, [R6]
42BC48:  CMP             R0, #0
42BC4A:  ITTT NE
42BC4C:  LDRNE           R1, [R0]
42BC4E:  LDRNE           R1, [R1,#4]
42BC50:  BLXNE           R1
42BC52:  CMP             R5, #0
42BC54:  MOV             R6, R5
42BC56:  BNE             loc_42BC24
42BC58:  ADD.W           R9, R9, #1
42BC5C:  CMP.W           R9, #0x100
42BC60:  BNE             loc_42BC18
42BC62:  ADD             SP, SP, #4
42BC64:  POP.W           {R8-R11}
42BC68:  POP             {R4-R7,PC}
