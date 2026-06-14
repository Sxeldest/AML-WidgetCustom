; =========================================================
; Game Engine Function: _Z30RpAnimBlendClumpAddAssociationP7RpClumpP21CAnimBlendAssociationjff
; Address            : 0x3908EC - 0x390934
; =========================================================

3908EC:  PUSH            {R4,R5,R7,LR}
3908EE:  ADD             R7, SP, #8
3908F0:  VPUSH           {D8}
3908F4:  MOV             R4, R1
3908F6:  LDR             R1, =(ClumpOffset_ptr - 0x390902)
3908F8:  MOV             R5, R2
3908FA:  VLDR            S16, [R7,#arg_0]
3908FE:  ADD             R1, PC; ClumpOffset_ptr
390900:  LDR             R1, [R1]; ClumpOffset
390902:  LDR             R1, [R1]
390904:  LDR             R0, [R0,R1]
390906:  ADDS            R1, R4, #4
390908:  LDR             R2, [R0]
39090A:  CMP             R2, #0
39090C:  ITTE NE
39090E:  STRNE           R1, [R2,#4]
390910:  LDRNE           R2, [R0]
390912:  MOVEQ           R2, #0
390914:  STRD.W          R2, R0, [R4,#4]
390918:  STR             R1, [R0]
39091A:  MOV             R0, R4; this
39091C:  MOV             R1, R3; float
39091E:  BLX             j__ZN21CAnimBlendAssociation5StartEf; CAnimBlendAssociation::Start(float)
390922:  LDRH            R0, [R4,#0x2E]
390924:  VSTR            S16, [R4,#0x18]
390928:  ORRS            R0, R5
39092A:  STRH            R0, [R4,#0x2E]
39092C:  MOV             R0, R4
39092E:  VPOP            {D8}
390932:  POP             {R4,R5,R7,PC}
