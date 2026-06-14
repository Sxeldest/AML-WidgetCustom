; =========================================================
; Game Engine Function: sub_1EED48
; Address            : 0x1EED48 - 0x1EEDB2
; =========================================================

1EED48:  CBZ             R1, locret_1EEDB0
1EED4A:  PUSH            {R4-R7,LR}
1EED4C:  ADD             R7, SP, #0xC
1EED4E:  PUSH.W          {R11}
1EED52:  SUB             SP, SP, #0x10
1EED54:  MOV             R4, R0
1EED56:  LDR             R0, [R0]
1EED58:  LDRB            R2, [R4]
1EED5A:  LDR             R3, [R4,#4]
1EED5C:  ANDS.W          R5, R2, #1
1EED60:  IT EQ
1EED62:  LSREQ           R3, R2, #1
1EED64:  BIC.W           R2, R0, #1
1EED68:  SUB.W           R5, R2, #1
1EED6C:  IT EQ
1EED6E:  MOVEQ           R5, #0xA
1EED70:  SUBS            R2, R5, R3
1EED72:  CMP             R2, R1
1EED74:  BCS             loc_1EED8E
1EED76:  ADDS            R6, R3, R1
1EED78:  MOVS            R0, #0
1EED7A:  SUBS            R2, R6, R5
1EED7C:  STRD.W          R3, R0, [SP,#0x20+var_20]
1EED80:  STR             R0, [SP,#0x20+var_18]
1EED82:  MOV             R0, R4
1EED84:  MOV             R1, R5
1EED86:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj; std::string::__grow_by(uint,uint,uint,uint,uint,uint)
1EED8A:  LDRB            R0, [R4]
1EED8C:  B               loc_1EED92
1EED8E:  ADDS            R6, R3, R1
1EED90:  UXTB            R0, R0
1EED92:  ANDS.W          R0, R0, #1
1EED96:  LDR             R0, [R4,#8]
1EED98:  ITTTE EQ
1EED9A:  ADDEQ           R0, R4, #1
1EED9C:  LSLEQ           R1, R6, #1
1EED9E:  STRBEQ          R1, [R4]
1EEDA0:  STRNE           R6, [R4,#4]
1EEDA2:  MOVS            R1, #0
1EEDA4:  STRB            R1, [R0,R6]
1EEDA6:  ADD             SP, SP, #0x10
1EEDA8:  POP.W           {R11}
1EEDAC:  POP.W           {R4-R7,LR}
1EEDB0:  BX              LR
