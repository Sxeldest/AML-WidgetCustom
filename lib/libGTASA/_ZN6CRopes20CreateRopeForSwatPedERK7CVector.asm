; =========================================================
; Game Engine Function: _ZN6CRopes20CreateRopeForSwatPedERK7CVector
; Address            : 0x41513C - 0x41518C
; =========================================================

41513C:  PUSH            {R4,R6,R7,LR}
41513E:  ADD             R7, SP, #8
415140:  SUB             SP, SP, #0x18
415142:  LDR             R1, =(dword_9647DC - 0x415152)
415144:  MOV.W           R12, #0xFA0
415148:  LDRD.W          R2, R3, [R0]
41514C:  MOVS            R4, #0
41514E:  ADD             R1, PC; dword_9647DC
415150:  LDR             R0, [R0,#8]
415152:  MOV.W           LR, #1
415156:  LDR             R1, [R1]
415158:  STRD.W          R0, LR, [SP,#0x20+var_20]
41515C:  STRD.W          R4, R4, [SP,#0x20+var_18]
415160:  STRD.W          R4, R12, [SP,#0x20+var_10]
415164:  ADD.W           R4, R1, #0x64 ; 'd'
415168:  MOVS            R1, #8
41516A:  MOV             R0, R4
41516C:  BLX             j__ZN6CRopes12RegisterRopeEjj7CVectorbhbP9CPhysicali; CRopes::RegisterRope(uint,uint,CVector,bool,uchar,bool,CPhysical *,int)
415170:  CMP             R0, #0
415172:  BLT             loc_415182
415174:  LDR             R0, =(dword_9647DC - 0x41517A)
415176:  ADD             R0, PC; dword_9647DC
415178:  LDR             R1, [R0]
41517A:  ADDS            R1, #1
41517C:  UXTB            R1, R1
41517E:  STR             R1, [R0]
415180:  B               loc_415186
415182:  MOV.W           R4, #0xFFFFFFFF
415186:  MOV             R0, R4
415188:  ADD             SP, SP, #0x18
41518A:  POP             {R4,R6,R7,PC}
