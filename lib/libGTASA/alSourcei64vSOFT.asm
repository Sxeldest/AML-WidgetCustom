; =========================================================
; Game Engine Function: alSourcei64vSOFT
; Address            : 0x258B8C - 0x258D0E
; =========================================================

258B8C:  PUSH            {R4-R7,LR}
258B8E:  ADD             R7, SP, #0xC
258B90:  PUSH.W          {R8}
258B94:  MOV             R8, R2
258B96:  MOV             R6, R1
258B98:  MOV             R5, R0
258B9A:  BLX             j_GetContextRef
258B9E:  MOV             R4, R0
258BA0:  CMP             R4, #0
258BA2:  BEQ.W           loc_258C16
258BA6:  ADD.W           R0, R4, #8
258BAA:  MOV             R1, R5
258BAC:  BLX             j_LookupUIntMapKey
258BB0:  CMP             R0, #0
258BB2:  BEQ.W           loc_258C1C
258BB6:  CMP.W           R8, #0
258BBA:  BEQ.W           loc_258C50
258BBE:  CMP.W           R6, #0x1200
258BC2:  BGE.W           loc_258C98
258BC6:  MOVW            R1, #0x1001
258BCA:  SUBS            R1, R6, R1
258BCC:  CMP             R1, #0x32 ; '2'; switch 51 cases
258BCE:  BHI.W           def_258BD2; jumptable 00258BD2 default case
258BD2:  TBB.W           [PC,R1]; switch jump
258BD6:  DCB 0x1A; jump table for switch statement
258BD7:  DCB 0x1A
258BD8:  DCB 0x80
258BD9:  DCB 0x1A
258BDA:  DCB 0x1A
258BDB:  DCB 0x1A
258BDC:  DCB 0x1A
258BDD:  DCB 0x80
258BDE:  DCB 0x1A
258BDF:  DCB 0x80
258BE0:  DCB 0x80
258BE1:  DCB 0x80
258BE2:  DCB 0x80
258BE3:  DCB 0x80
258BE4:  DCB 0x80
258BE5:  DCB 0x1A
258BE6:  DCB 0x80
258BE7:  DCB 0x80
258BE8:  DCB 0x80
258BE9:  DCB 0x80
258BEA:  DCB 0x1A
258BEB:  DCB 0x1A
258BEC:  DCB 0x80
258BED:  DCB 0x80
258BEE:  DCB 0x80
258BEF:  DCB 0x80
258BF0:  DCB 0x80
258BF1:  DCB 0x80
258BF2:  DCB 0x80
258BF3:  DCB 0x80
258BF4:  DCB 0x80
258BF5:  DCB 0x1A
258BF6:  DCB 0x1A
258BF7:  DCB 0x80
258BF8:  DCB 0x1A
258BF9:  DCB 0x1A
258BFA:  DCB 0x1A
258BFB:  DCB 0x1A
258BFC:  DCB 0x1A
258BFD:  DCB 0x80
258BFE:  DCB 0x80
258BFF:  DCB 0x80
258C00:  DCB 0x80
258C01:  DCB 0x80
258C02:  DCB 0x80
258C03:  DCB 0x80
258C04:  DCB 0x80
258C05:  DCB 0x80
258C06:  DCB 0x1A
258C07:  DCB 0x1A
258C08:  DCB 0x1A
258C09:  ALIGN 2
258C0A:  MOV             R1, R4; jumptable 00258BD2 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
258C0C:  MOV             R2, R6
258C0E:  MOV             R3, R8
258C10:  BL              sub_2587CC
258C14:  B               loc_258C8A
258C16:  POP.W           {R8}
258C1A:  POP             {R4-R7,PC}
258C1C:  LDR             R0, =(TrapALError_ptr - 0x258C22)
258C1E:  ADD             R0, PC; TrapALError_ptr
258C20:  LDR             R0, [R0]; TrapALError
258C22:  LDRB            R0, [R0]
258C24:  CMP             R0, #0
258C26:  ITT NE
258C28:  MOVNE           R0, #5; sig
258C2A:  BLXNE           raise
258C2E:  LDREX.W         R0, [R4,#0x50]
258C32:  CBNZ            R0, loc_258C82
258C34:  ADD.W           R0, R4, #0x50 ; 'P'
258C38:  MOVW            R1, #0xA001
258C3C:  DMB.W           ISH
258C40:  STREX.W         R2, R1, [R0]
258C44:  CBZ             R2, loc_258C86
258C46:  LDREX.W         R2, [R0]
258C4A:  CMP             R2, #0
258C4C:  BEQ             loc_258C40
258C4E:  B               loc_258C82
258C50:  LDR             R0, =(TrapALError_ptr - 0x258C56)
258C52:  ADD             R0, PC; TrapALError_ptr
258C54:  LDR             R0, [R0]; TrapALError
258C56:  LDRB            R0, [R0]
258C58:  CMP             R0, #0
258C5A:  ITT NE
258C5C:  MOVNE           R0, #5; sig
258C5E:  BLXNE           raise
258C62:  LDREX.W         R0, [R4,#0x50]
258C66:  CBNZ            R0, loc_258C82
258C68:  ADD.W           R0, R4, #0x50 ; 'P'
258C6C:  MOVW            R1, #0xA003
258C70:  DMB.W           ISH
258C74:  STREX.W         R2, R1, [R0]
258C78:  CBZ             R2, loc_258C86
258C7A:  LDREX.W         R2, [R0]
258C7E:  CMP             R2, #0
258C80:  BEQ             loc_258C74
258C82:  CLREX.W
258C86:  DMB.W           ISH
258C8A:  MOV             R0, R4
258C8C:  POP.W           {R8}
258C90:  POP.W           {R4-R7,LR}
258C94:  B.W             ALCcontext_DecRef
258C98:  MOVS            R1, #0x20004
258C9E:  CMP             R6, R1
258CA0:  BLE             loc_258CBA
258CA2:  SUB.W           R1, R6, #0x20000
258CA6:  SUBS            R1, #5
258CA8:  CMP             R1, #7
258CAA:  BHI             loc_258CD6; jumptable 00258BD2 cases 2,7,9-14,16-19,22-30,33,39-47
258CAC:  MOVS            R2, #1
258CAE:  LSL.W           R1, R2, R1
258CB2:  TST.W           R1, #0xE3
258CB6:  BNE             loc_258C0A; jumptable 00258BD2 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
258CB8:  B               loc_258CD6; jumptable 00258BD2 cases 2,7,9-14,16-19,22-30,33,39-47
258CBA:  CMP.W           R6, #0x1200
258CBE:  IT NE
258CC0:  CMPNE.W         R6, #0xC000
258CC4:  BEQ             loc_258C0A; jumptable 00258BD2 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
258CC6:  CMP.W           R6, #0xD000
258CCA:  BEQ             loc_258C0A; jumptable 00258BD2 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
258CCC:  B               loc_258CD6; jumptable 00258BD2 cases 2,7,9-14,16-19,22-30,33,39-47
258CCE:  MOVW            R1, #0x202; jumptable 00258BD2 default case
258CD2:  CMP             R6, R1
258CD4:  BEQ             loc_258C0A; jumptable 00258BD2 cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
258CD6:  LDR             R0, =(TrapALError_ptr - 0x258CDC); jumptable 00258BD2 cases 2,7,9-14,16-19,22-30,33,39-47
258CD8:  ADD             R0, PC; TrapALError_ptr
258CDA:  LDR             R0, [R0]; TrapALError
258CDC:  LDRB            R0, [R0]
258CDE:  CMP             R0, #0
258CE0:  ITT NE
258CE2:  MOVNE           R0, #5; sig
258CE4:  BLXNE           raise
258CE8:  LDREX.W         R0, [R4,#0x50]
258CEC:  CMP             R0, #0
258CEE:  BNE             loc_258C82
258CF0:  ADD.W           R0, R4, #0x50 ; 'P'
258CF4:  MOVW            R1, #0xA002
258CF8:  DMB.W           ISH
258CFC:  STREX.W         R2, R1, [R0]
258D00:  CMP             R2, #0
258D02:  BEQ             loc_258C86
258D04:  LDREX.W         R2, [R0]
258D08:  CMP             R2, #0
258D0A:  BEQ             loc_258CFC
258D0C:  B               loc_258C82
