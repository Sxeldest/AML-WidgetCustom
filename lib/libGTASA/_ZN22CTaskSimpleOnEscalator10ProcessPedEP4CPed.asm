; =========================================================
; Game Engine Function: _ZN22CTaskSimpleOnEscalator10ProcessPedEP4CPed
; Address            : 0x4EA93C - 0x4EA988
; =========================================================

4EA93C:  PUSH            {R4,R5,R7,LR}; float
4EA93E:  ADD             R7, SP, #8
4EA940:  MOV             R4, R1
4EA942:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4EA946:  LDR.W           R1, [R4,#0x588]
4EA94A:  CBZ             R1, loc_4EA982
4EA94C:  LDR             R0, =(MI_ESCALATORSTEP_ptr - 0x4EA952)
4EA94E:  ADD             R0, PC; MI_ESCALATORSTEP_ptr
4EA950:  LDR             R2, [R0]; MI_ESCALATORSTEP
4EA952:  LDRSH.W         R0, [R1,#0x26]
4EA956:  LDRH            R2, [R2]
4EA958:  CMP             R0, R2
4EA95A:  BEQ             loc_4EA968
4EA95C:  LDR             R2, =(MI_ESCALATORSTEP8_ptr - 0x4EA962)
4EA95E:  ADD             R2, PC; MI_ESCALATORSTEP8_ptr
4EA960:  LDR             R2, [R2]; MI_ESCALATORSTEP8
4EA962:  LDRH            R2, [R2]
4EA964:  CMP             R0, R2
4EA966:  BNE             loc_4EA982
4EA968:  LDRD.W          R0, R1, [R1,#0x48]; float
4EA96C:  MOVS            R2, #0; float
4EA96E:  MOVS            R3, #0; float
4EA970:  MOVS            R5, #0
4EA972:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
4EA976:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4EA97A:  STR.W           R0, [R4,#0x560]
4EA97E:  MOV             R0, R5
4EA980:  POP             {R4,R5,R7,PC}
4EA982:  MOVS            R5, #1
4EA984:  MOV             R0, R5
4EA986:  POP             {R4,R5,R7,PC}
