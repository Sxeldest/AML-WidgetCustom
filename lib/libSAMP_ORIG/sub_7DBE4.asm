; =========================================================
; Game Engine Function: sub_7DBE4
; Address            : 0x7DBE4 - 0x7DD50
; =========================================================

7DBE4:  PUSH            {R4-R7,LR}
7DBE6:  ADD             R7, SP, #0xC
7DBE8:  PUSH.W          {R8-R11}
7DBEC:  SUB             SP, SP, #0xC
7DBEE:  MOV             R5, R0
7DBF0:  MOVW            R0, #0x25C4
7DBF4:  CMP             R1, #0
7DBF6:  ADD.W           R11, R5, R0
7DBFA:  ITTT NE
7DBFC:  MOVWNE          R0, #0x25C8
7DC00:  LDRBNE          R0, [R5,R0]
7DC02:  CMPNE           R0, #0
7DC04:  MOV             R8, R3
7DC06:  MOV             R10, R2
7DC08:  MOV             R4, R1
7DC0A:  BNE             loc_7DC56
7DC0C:  LDRH            R1, [R5,#8]
7DC0E:  LDR             R0, =(aSvDbgChannelPu - 0x7DC14); "[sv:dbg:channel:push] : init channel (s"... ...
7DC10:  ADD             R0, PC; "[sv:dbg:channel:push] : init channel (s"...
7DC12:  BL              sub_80664
7DC16:  LDR             R0, =(off_114CC4 - 0x7DC1C)
7DC18:  ADD             R0, PC; off_114CC4
7DC1A:  LDR             R1, [R0]; off_1ABEF8
7DC1C:  LDR             R0, [R5,#4]
7DC1E:  LDR             R1, [R1]
7DC20:  BLX             R1
7DC22:  LDR             R0, =(off_114CC8 - 0x7DC28)
7DC24:  ADD             R0, PC; off_114CC8
7DC26:  LDR             R1, [R0]; off_1ABF50
7DC28:  LDR             R0, [R5,#4]
7DC2A:  LDR             R1, [R1]
7DC2C:  MOVS            R2, #0
7DC2E:  MOVS            R3, #0
7DC30:  STR             R2, [SP,#0x28+var_28]
7DC32:  MOVS            R2, #0
7DC34:  BLX             R1
7DC36:  LDR             R0, [R5,#0x40]
7DC38:  MOVW            R1, #0xFBC
7DC3C:  BLX             j_opus_decoder_ctl
7DC40:  LDRB            R0, [R5]
7DC42:  CMP             R0, #0
7DC44:  ITT NE
7DC46:  MOVNE           R0, #1
7DC48:  STRBNE          R0, [R5,#2]
7DC4A:  MOVS            R0, #0
7DC4C:  STRB            R0, [R5]
7DC4E:  MOVS            R0, #1
7DC50:  STRB.W          R0, [R11,#4]
7DC54:  B               loc_7DCAC
7DC56:  LDR.W           R3, [R11]
7DC5A:  CMP             R3, R4
7DC5C:  BLS             loc_7DC6C
7DC5E:  LDRH            R1, [R5,#8]
7DC60:  LDR             R0, =(aSvDbgChannelPu_0 - 0x7DC66); "[sv:dbg:channel:push] : late packet to "... ...
7DC62:  ADD             R0, PC; "[sv:dbg:channel:push] : late packet to "...
7DC64:  MOV             R2, R4
7DC66:  BL              sub_80664
7DC6A:  B               loc_7DD48
7DC6C:  BCS             loc_7DCAC
7DC6E:  LDRH            R1, [R5,#8]
7DC70:  LDR             R0, =(aSvDbgChannelPu_1 - 0x7DC76); "[sv:dbg:channel:push] : lost packet to "... ...
7DC72:  ADD             R0, PC; "[sv:dbg:channel:push] : lost packet to "...
7DC74:  MOV             R2, R4
7DC76:  BL              sub_80664
7DC7A:  LDR             R0, [R5,#0x40]
7DC7C:  ADD.W           R9, R5, #0x44 ; 'D'
7DC80:  MOVS            R1, #1
7DC82:  MOV.W           R2, #0x12C0
7DC86:  STRD.W          R2, R1, [SP,#0x28+var_28]
7DC8A:  MOV             R1, R10
7DC8C:  MOV             R2, R8
7DC8E:  MOV             R3, R9
7DC90:  BLX             j_opus_decode
7DC94:  CMP.W           R0, #0x12C0
7DC98:  BNE             loc_7DCAC
7DC9A:  LDR             R0, =(off_114CCC - 0x7DCA0)
7DC9C:  ADD             R0, PC; off_114CCC
7DC9E:  LDR             R1, [R0]; off_1ABF4C
7DCA0:  LDR             R0, [R5,#4]
7DCA2:  LDR             R3, [R1]
7DCA4:  MOV             R1, R9
7DCA6:  MOV.W           R2, #0x2580
7DCAA:  BLX             R3
7DCAC:  LDR             R0, [R5,#0x40]
7DCAE:  ADD.W           R6, R5, #0x44 ; 'D'
7DCB2:  MOVS            R1, #0
7DCB4:  MOV.W           R2, #0x12C0
7DCB8:  STRD.W          R2, R1, [SP,#0x28+var_28]
7DCBC:  MOV             R1, R10
7DCBE:  MOV             R2, R8
7DCC0:  MOV             R3, R6
7DCC2:  BLX             j_opus_decode
7DCC6:  CMP.W           R0, #0x12C0
7DCCA:  BNE             loc_7DCDE
7DCCC:  LDR             R0, =(off_114CCC - 0x7DCD2)
7DCCE:  ADD             R0, PC; off_114CCC
7DCD0:  LDR             R1, [R0]; off_1ABF4C
7DCD2:  LDR             R0, [R5,#4]
7DCD4:  LDR             R3, [R1]
7DCD6:  MOV             R1, R6
7DCD8:  MOV.W           R2, #0x2580
7DCDC:  BLX             R3
7DCDE:  LDR             R0, =(off_114CD0 - 0x7DCE4)
7DCE0:  ADD             R0, PC; off_114CD0
7DCE2:  LDR             R1, [R0]; off_1ABF54
7DCE4:  LDR             R0, [R5,#4]
7DCE6:  LDR             R1, [R1]
7DCE8:  BLX             R1
7DCEA:  MOV             R6, R0
7DCEC:  LDR             R0, =(off_114CC0 - 0x7DCF2)
7DCEE:  ADD             R0, PC; off_114CC0
7DCF0:  LDR             R1, [R0]; off_1ABF44
7DCF2:  LDR             R0, [R5,#4]
7DCF4:  LDR             R3, [R1]
7DCF6:  MOVS            R1, #0
7DCF8:  MOVS            R2, #0
7DCFA:  BLX             R3
7DCFC:  SUBS            R1, R6, #3
7DCFE:  IT NE
7DD00:  MOVNE           R1, #1
7DD02:  CMP             R6, #0
7DD04:  IT NE
7DD06:  MOVNE           R6, #1
7DD08:  TST             R1, R6
7DD0A:  BNE             loc_7DD42
7DD0C:  MOVW            R1, #0x8F7E
7DD10:  SUB.W           R0, R0, #0x7080
7DD14:  MOVT            R1, #0xFFFF
7DD18:  CMP             R0, R1
7DD1A:  BHI             loc_7DD42
7DD1C:  LDRH            R1, [R5,#8]
7DD1E:  LDR             R0, =(aSvDbgChannelPu_2 - 0x7DD24); "[sv:dbg:channel:push] : playing channel"... ...
7DD20:  ADD             R0, PC; "[sv:dbg:channel:push] : playing channel"...
7DD22:  BL              sub_80664
7DD26:  LDR             R0, =(off_114A90 - 0x7DD2C)
7DD28:  ADD             R0, PC; off_114A90
7DD2A:  LDR             R1, [R0]; off_1ABEF4
7DD2C:  LDR             R0, [R5,#4]
7DD2E:  LDR             R2, [R1]
7DD30:  MOVS            R1, #0
7DD32:  BLX             R2
7DD34:  LDRB            R0, [R5]
7DD36:  CMP             R0, #0
7DD38:  ITT EQ
7DD3A:  MOVEQ           R0, #1
7DD3C:  STRBEQ          R0, [R5,#1]
7DD3E:  MOVS            R0, #1
7DD40:  STRB            R0, [R5]
7DD42:  ADDS            R0, R4, #1
7DD44:  STR.W           R0, [R11]
7DD48:  ADD             SP, SP, #0xC
7DD4A:  POP.W           {R8-R11}
7DD4E:  POP             {R4-R7,PC}
