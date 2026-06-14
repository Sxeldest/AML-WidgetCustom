; =========================================================
; Game Engine Function: _ZN6CStoreI13CPedModelInfoLi278EED2Ev
; Address            : 0x3863E0 - 0x386428
; =========================================================

3863E0:  PUSH            {R4-R7,LR}
3863E2:  ADD             R7, SP, #0xC
3863E4:  PUSH.W          {R8,R9,R11}
3863E8:  MOV             R8, R0
3863EA:  MOVW            R0, #0x63E8
3863EE:  ADD.W           R5, R8, R0
3863F2:  LDR             R0, =(_ZTV13CPedModelInfo_ptr - 0x3863FE)
3863F4:  MOVW            R9, #0x9C18
3863F8:  MOVS            R6, #0
3863FA:  ADD             R0, PC; _ZTV13CPedModelInfo_ptr
3863FC:  MOVT            R9, #0xFFFF
386400:  LDR             R0, [R0]; `vtable for'CPedModelInfo ...
386402:  ADD.W           R4, R0, #8
386406:  ADDS            R0, R5, R6
386408:  STR.W           R4, [R0,#-0x58]
38640C:  LDR.W           R0, [R0,#-0xC]; this
386410:  CBZ             R0, loc_38641A
386412:  BLX             j__ZN9CColModelD2Ev; CColModel::~CColModel()
386416:  BLX             j__ZN9CColModeldlEPv; CColModel::operator delete(void *)
38641A:  SUBS            R6, #0x5C ; '\'
38641C:  CMP             R6, R9
38641E:  BNE             loc_386406
386420:  MOV             R0, R8
386422:  POP.W           {R8,R9,R11}
386426:  POP             {R4-R7,PC}
