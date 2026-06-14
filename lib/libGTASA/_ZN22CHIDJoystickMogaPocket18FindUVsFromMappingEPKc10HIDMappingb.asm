; =========================================================
; Game Engine Function: _ZN22CHIDJoystickMogaPocket18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28EC58 - 0x28ED44
; =========================================================

28EC58:  PUSH            {R4-R7,LR}
28EC5A:  ADD             R7, SP, #0xC
28EC5C:  PUSH.W          {R11}
28EC60:  LDR.W           R12, [R1,#8]
28EC64:  CMP.W           R12, #0
28EC68:  BEQ.W           loc_28ED12
28EC6C:  LDR             R1, [R1,#0xC]
28EC6E:  MOVS            R2, #0
28EC70:  MOV.W           LR, #0
28EC74:  MOVS            R4, #0
28EC76:  ADDS            R1, #4
28EC78:  LDR             R5, [R1]
28EC7A:  CMP             R5, R3
28EC7C:  BNE.W           def_28EC8A; jumptable 0028EC8A default case, cases 8-63
28EC80:  LDR.W           R5, [R1,#-4]
28EC84:  CMP             R5, #0x43 ; 'C'; switch 68 cases
28EC86:  BHI.W           def_28EC8A; jumptable 0028EC8A default case, cases 8-63
28EC8A:  TBB.W           [PC,R5]; switch jump
28EC8E:  DCB 0x22; jump table for switch statement
28EC8F:  DCB 0x22
28EC90:  DCB 0x22
28EC91:  DCB 0x22
28EC92:  DCB 0x2E
28EC93:  DCB 0x31
28EC94:  DCB 0x35
28EC95:  DCB 0x39
28EC96:  DCB 0x3C
28EC97:  DCB 0x3C
28EC98:  DCB 0x3C
28EC99:  DCB 0x3C
28EC9A:  DCB 0x3C
28EC9B:  DCB 0x3C
28EC9C:  DCB 0x3C
28EC9D:  DCB 0x3C
28EC9E:  DCB 0x3C
28EC9F:  DCB 0x3C
28ECA0:  DCB 0x3C
28ECA1:  DCB 0x3C
28ECA2:  DCB 0x3C
28ECA3:  DCB 0x3C
28ECA4:  DCB 0x3C
28ECA5:  DCB 0x3C
28ECA6:  DCB 0x3C
28ECA7:  DCB 0x3C
28ECA8:  DCB 0x3C
28ECA9:  DCB 0x3C
28ECAA:  DCB 0x3C
28ECAB:  DCB 0x3C
28ECAC:  DCB 0x3C
28ECAD:  DCB 0x3C
28ECAE:  DCB 0x3C
28ECAF:  DCB 0x3C
28ECB0:  DCB 0x3C
28ECB1:  DCB 0x3C
28ECB2:  DCB 0x3C
28ECB3:  DCB 0x3C
28ECB4:  DCB 0x3C
28ECB5:  DCB 0x3C
28ECB6:  DCB 0x3C
28ECB7:  DCB 0x3C
28ECB8:  DCB 0x3C
28ECB9:  DCB 0x3C
28ECBA:  DCB 0x3C
28ECBB:  DCB 0x3C
28ECBC:  DCB 0x3C
28ECBD:  DCB 0x3C
28ECBE:  DCB 0x3C
28ECBF:  DCB 0x3C
28ECC0:  DCB 0x3C
28ECC1:  DCB 0x3C
28ECC2:  DCB 0x3C
28ECC3:  DCB 0x3C
28ECC4:  DCB 0x3C
28ECC5:  DCB 0x3C
28ECC6:  DCB 0x3C
28ECC7:  DCB 0x3C
28ECC8:  DCB 0x3C
28ECC9:  DCB 0x3C
28ECCA:  DCB 0x3C
28ECCB:  DCB 0x3C
28ECCC:  DCB 0x3C
28ECCD:  DCB 0x3C
28ECCE:  DCB 0x26
28ECCF:  DCB 0x26
28ECD0:  DCB 0x2A
28ECD1:  DCB 0x2A
28ECD2:  MOV.W           LR, #1; jumptable 0028EC8A cases 0-3
28ECD6:  MOV             R4, R5
28ECD8:  B               def_28EC8A; jumptable 0028EC8A default case, cases 8-63
28ECDA:  MOV.W           LR, #0; jumptable 0028EC8A cases 64,65
28ECDE:  MOVS            R4, #2
28ECE0:  B               def_28EC8A; jumptable 0028EC8A default case, cases 8-63
28ECE2:  MOV.W           LR, #0; jumptable 0028EC8A cases 66,67
28ECE6:  MOVS            R4, #3
28ECE8:  B               def_28EC8A; jumptable 0028EC8A default case, cases 8-63
28ECEA:  MOV.W           LR, #0; jumptable 0028EC8A case 4
28ECEE:  B               loc_28ED04
28ECF0:  MOVS            R4, #0; jumptable 0028EC8A case 5
28ECF2:  MOV.W           LR, #0
28ECF6:  B               def_28EC8A; jumptable 0028EC8A default case, cases 8-63
28ECF8:  MOV.W           LR, #2; jumptable 0028EC8A case 6
28ECFC:  MOVS            R4, #0
28ECFE:  B               def_28EC8A; jumptable 0028EC8A default case, cases 8-63
28ED00:  MOV.W           LR, #2; jumptable 0028EC8A case 7
28ED04:  MOVS            R4, #1
28ED06:  ADDS            R2, #1; jumptable 0028EC8A default case, cases 8-63
28ED08:  ADDS            R1, #0x14
28ED0A:  CMP             R2, R12
28ED0C:  BCC.W           loc_28EC78
28ED10:  B               loc_28ED18
28ED12:  MOVS            R4, #0
28ED14:  MOV.W           LR, #0
28ED18:  VMOV.32         D16[0], R4
28ED1C:  ADDS            R1, R4, #1
28ED1E:  VMOV.F32        Q9, #0.25
28ED22:  VMOV.32         D17[0], R1
28ED26:  ADD.W           R1, LR, #1
28ED2A:  VMOV.32         D16[1], R1
28ED2E:  VMOV.32         D17[1], LR
28ED32:  VCVT.F32.S32    Q8, Q8
28ED36:  VMUL.F32        Q8, Q8, Q9
28ED3A:  VST1.32         {D16-D17}, [R0]
28ED3E:  POP.W           {R11}
28ED42:  POP             {R4-R7,PC}
