; =========================================================
; Game Engine Function: _ZN5CText3GetEPKc
; Address            : 0x54DB8C - 0x54DCA8
; =========================================================

54DB8C:  PUSH            {R4-R7,LR}
54DB8E:  ADD             R7, SP, #0xC
54DB90:  PUSH.W          {R8,R9,R11}
54DB94:  MOV             R9, R1
54DB96:  MOV             R8, R0
54DB98:  LDRB.W          R0, [R9]
54DB9C:  ORR.W           R0, R0, #0x20 ; ' '
54DBA0:  CMP             R0, #0x20 ; ' '
54DBA2:  BNE             loc_54DBAA
54DBA4:  LDR             R0, =(GxtErrorString_ptr - 0x54DBAA)
54DBA6:  ADD             R0, PC; GxtErrorString_ptr
54DBA8:  B               loc_54DC86
54DBAA:  MOV             R0, R9; this
54DBAC:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
54DBB0:  LDR.W           R2, [R8,#4]
54DBB4:  MOVW            R12, #0xFFFF
54DBB8:  ADD             R2, R12
54DBBA:  SXTH            R3, R2
54DBBC:  CMP             R3, #0
54DBBE:  BLT             loc_54DC04
54DBC0:  LDR.W           R3, [R8]
54DBC4:  MOVS            R4, #0
54DBC6:  SXTH            R4, R4
54DBC8:  SXTAH.W         R6, R4, R2
54DBCC:  ADD.W           R6, R6, R6,LSR#31
54DBD0:  ASRS            R6, R6, #1
54DBD2:  UXTH            R5, R6
54DBD4:  ADD.W           R5, R3, R5,LSL#3
54DBD8:  LDR             R1, [R5,#4]; char *
54DBDA:  CMP             R1, R0
54DBDC:  BEQ             loc_54DBF8
54DBDE:  BCC             loc_54DBEC
54DBE0:  ADD.W           R1, R6, R12
54DBE4:  SXTH            R2, R1
54DBE6:  CMP             R4, R2
54DBE8:  BLE             loc_54DBC8
54DBEA:  B               loc_54DC04
54DBEC:  ADDS            R1, R6, #1
54DBEE:  SXTH            R4, R1
54DBF0:  SXTH            R1, R2
54DBF2:  CMP             R1, R4
54DBF4:  BGE             loc_54DBC6
54DBF6:  B               loc_54DC04
54DBF8:  CMP             R5, #0
54DBFA:  ITTT NE
54DBFC:  LDRNE           R0, [R5]
54DBFE:  POPNE.W         {R8,R9,R11}
54DC02:  POPNE           {R4-R7,PC}
54DC04:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x54DC0A)
54DC06:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
54DC08:  LDR             R0, [R0]; CGame::bMissionPackGame ...
54DC0A:  LDRB            R0, [R0]; CGame::bMissionPackGame
54DC0C:  CMP             R0, #0
54DC0E:  ITT NE
54DC10:  LDRBNE.W        R0, [R8,#0x23]
54DC14:  CMPNE           R0, #0
54DC16:  BNE             loc_54DC28
54DC18:  LDRB.W          R0, [R8,#0x21]
54DC1C:  CMP             R0, #0
54DC1E:  ITT NE
54DC20:  LDRBNE.W        R0, [R8,#0x23]
54DC24:  CMPNE           R0, #0
54DC26:  BEQ             loc_54DC82
54DC28:  MOV             R0, R9; this
54DC2A:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
54DC2E:  LDR.W           R2, [R8,#0x14]
54DC32:  MOVW            R12, #0xFFFF
54DC36:  ADD             R2, R12
54DC38:  SXTH            R3, R2
54DC3A:  CMP             R3, #0
54DC3C:  BLT             loc_54DC82
54DC3E:  LDR.W           R3, [R8,#0x10]
54DC42:  MOVS            R6, #0
54DC44:  SXTH            R6, R6
54DC46:  SXTAH.W         R5, R6, R2
54DC4A:  ADD.W           R5, R5, R5,LSR#31
54DC4E:  ASRS            R5, R5, #1
54DC50:  UXTH            R4, R5
54DC52:  ADD.W           R4, R3, R4,LSL#3
54DC56:  LDR             R1, [R4,#4]
54DC58:  CMP             R1, R0
54DC5A:  BEQ             loc_54DC76
54DC5C:  BCC             loc_54DC6A
54DC5E:  ADD.W           R1, R5, R12
54DC62:  SXTH            R2, R1
54DC64:  CMP             R6, R2
54DC66:  BLE             loc_54DC46
54DC68:  B               loc_54DC82
54DC6A:  ADDS            R1, R5, #1
54DC6C:  SXTH            R6, R1
54DC6E:  SXTH            R1, R2
54DC70:  CMP             R1, R6
54DC72:  BGE             loc_54DC44
54DC74:  B               loc_54DC82
54DC76:  CMP             R4, #0
54DC78:  ITTT NE
54DC7A:  LDRNE           R0, [R4]
54DC7C:  POPNE.W         {R8,R9,R11}
54DC80:  POPNE           {R4-R7,PC}
54DC82:  LDR             R0, =(GxtErrorString_ptr - 0x54DC88)
54DC84:  ADD             R0, PC; GxtErrorString_ptr
54DC86:  LDR             R0, [R0]; GxtErrorString
54DC88:  MOVS            R1, #0
54DC8A:  VMOV.I32        Q8, #0
54DC8E:  STRH            R1, [R0,#(word_A01AC0 - 0xA01A90)]
54DC90:  ADD.W           R1, R0, #0x20 ; ' '
54DC94:  VST1.16         {D16-D17}, [R1]
54DC98:  MOV             R1, R0
54DC9A:  VST1.16         {D16-D17}, [R1]!
54DC9E:  VST1.16         {D16-D17}, [R1]
54DCA2:  POP.W           {R8,R9,R11}
54DCA6:  POP             {R4-R7,PC}
