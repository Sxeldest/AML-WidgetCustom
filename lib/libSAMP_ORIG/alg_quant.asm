; =========================================================
; Game Engine Function: alg_quant
; Address            : 0xC15F8 - 0xC173C
; =========================================================

C15F8:  PUSH            {R4-R7,LR}
C15FA:  ADD             R7, SP, #0xC
C15FC:  PUSH.W          {R8-R11}
C1600:  SUB             SP, SP, #0x14
C1602:  MOV             R10, R0
C1604:  LDR             R0, =(__stack_chk_guard_ptr - 0xC1610)
C1606:  MOV             R6, R1
C1608:  LDR.W           R9, [R7,#arg_0]
C160C:  ADD             R0, PC; __stack_chk_guard_ptr
C160E:  MOV             R8, R3
C1610:  MOV             R4, R2
C1612:  LDR             R0, [R0]; __stack_chk_guard
C1614:  LDR             R0, [R0]
C1616:  STR.W           R0, [R7,#var_24]
C161A:  MOVS            R0, #0x13
C161C:  ADD.W           R0, R0, R6,LSL#2
C1620:  BIC.W           R0, R0, #7
C1624:  SUB.W           R5, SP, R0
C1628:  MOV             SP, R5
C162A:  STRD.W          R4, R8, [SP,#0x30+var_38]!
C162E:  MOV             R0, R10
C1630:  MOVS            R2, #1
C1632:  MOV             R3, R9
C1634:  BLX             j_exp_rotation
C1638:  ADD             SP, SP, #8
C163A:  SUB             SP, SP, #8
C163C:  MOV             R0, R10
C163E:  MOV             R1, R5
C1640:  MOV             R2, R4
C1642:  MOV             R3, R6
C1644:  BLX             j_op_pvq_search_c
C1648:  ADD             SP, SP, #8
C164A:  LDR             R3, [R7,#arg_4]
C164C:  MOV             R11, R0
C164E:  MOV             R0, R5
C1650:  MOV             R1, R6
C1652:  MOV             R2, R4
C1654:  BLX             j_encode_pulses
C1658:  LDR             R0, [R7,#arg_C]
C165A:  CBZ             R0, loc_C16D6
C165C:  CLZ.W           R0, R11
C1660:  STRD.W          R4, R8, [R7,#var_2C]
C1664:  RSB.W           R8, R0, #0x1F
C1668:  LDR             R4, [R7,#arg_8]
C166A:  BIC.W           R0, R8, #1
C166E:  SUB.W           R1, R0, #0xE
C1672:  RSB.W           R0, R0, #0xE
C1676:  MOV.W           R2, R8,ASR#1
C167A:  CMP             R2, #7
C167C:  LSL.W           R0, R11, R0
C1680:  IT GT
C1682:  ASRGT.W         R0, R11, R1
C1686:  BLX             j_celt_rsqrt_norm
C168A:  SMULBB.W        R0, R4, R0
C168E:  MOV.W           R1, #0x8000
C1692:  MOVS            R2, #1
C1694:  MOVS            R3, #0
C1696:  ADD.W           R0, R1, R0,LSL#1
C169A:  ADD.W           R1, R2, R8,ASR#1
C169E:  LSLS            R2, R1
C16A0:  ASRS            R0, R0, #0x10
C16A2:  ASRS            R2, R2, #1
C16A4:  LDRSH.W         R4, [R5,R3,LSL#2]
C16A8:  SMLABB.W        R4, R4, R0, R2
C16AC:  ASRS            R4, R1
C16AE:  STRH.W          R4, [R10,R3,LSL#1]
C16B2:  ADDS            R3, #1
C16B4:  CMP             R3, R6
C16B6:  BLT             loc_C16A4
C16B8:  SUB             SP, SP, #8
C16BA:  LDR.W           R0, [R7,#var_2C]
C16BE:  MOV             R1, R6
C16C0:  STR             R0, [SP,#0x38+var_38]
C16C2:  MOV.W           R2, #0xFFFFFFFF
C16C6:  LDR.W           R0, [R7,#var_28]
C16CA:  MOV             R3, R9
C16CC:  STR             R0, [SP,#0x38+var_34]
C16CE:  MOV             R0, R10
C16D0:  BLX             j_exp_rotation
C16D4:  ADD             SP, SP, #8
C16D6:  CMP.W           R9, #2
C16DA:  BGE             loc_C16E0
C16DC:  MOVS            R0, #1
C16DE:  B               loc_C171C
C16E0:  MOV             R0, R6
C16E2:  MOV             R1, R9
C16E4:  BLX             sub_108874
C16E8:  MOV             R1, R0
C16EA:  MOVS            R0, #0
C16EC:  MOV.W           R12, #0
C16F0:  MUL.W           R6, R12, R1
C16F4:  MOVS            R4, #0
C16F6:  MOVS            R3, #0
C16F8:  ADDS            R2, R4, R6
C16FA:  ADDS            R4, #1
C16FC:  CMP             R4, R1
C16FE:  LDR.W           R2, [R5,R2,LSL#2]
C1702:  ORR.W           R3, R3, R2
C1706:  BLT             loc_C16F8
C1708:  CMP             R3, #0
C170A:  IT NE
C170C:  MOVNE           R3, #1
C170E:  LSL.W           R2, R3, R12
C1712:  ADD.W           R12, R12, #1
C1716:  ORRS            R0, R2
C1718:  CMP             R12, R9
C171A:  BNE             loc_C16F0
C171C:  LDR             R1, =(__stack_chk_guard_ptr - 0xC1726)
C171E:  LDR.W           R2, [R7,#var_24]
C1722:  ADD             R1, PC; __stack_chk_guard_ptr
C1724:  LDR             R1, [R1]; __stack_chk_guard
C1726:  LDR             R1, [R1]
C1728:  SUBS            R1, R1, R2
C172A:  ITTTT EQ
C172C:  SUBEQ.W         R4, R7, #-var_1C
C1730:  MOVEQ           SP, R4
C1732:  POPEQ.W         {R8-R11}
C1736:  POPEQ           {R4-R7,PC}
C1738:  BLX             __stack_chk_fail
