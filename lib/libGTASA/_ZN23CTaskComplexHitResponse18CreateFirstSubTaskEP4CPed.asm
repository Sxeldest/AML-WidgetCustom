; =========================================================
; Game Engine Function: _ZN23CTaskComplexHitResponse18CreateFirstSubTaskEP4CPed
; Address            : 0x4ECEF4 - 0x4ECFB4
; =========================================================

4ECEF4:  LDR             R0, [R0,#0xC]
4ECEF6:  CMP             R0, #3
4ECEF8:  ITT HI
4ECEFA:  MOVHI           R0, #0
4ECEFC:  BXHI            LR
4ECEFE:  PUSH            {R7,LR}
4ECF00:  MOV             R7, SP
4ECF02:  SUB             SP, SP, #0x10
4ECF04:  TBB.W           [PC,R0]; switch 4 cases
4ECF08:  DCB 2; jump table for switch statement
4ECF09:  DCB 0x3E
4ECF0A:  DCB 0x16
4ECF0B:  DCB 0x2A
4ECF0C:  MOVS            R0, #dword_20; jumptable 004ECF04 case 0
4ECF0E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECF12:  LDR             R1, =(aHitfromfront - 0x4ECF1E); "HitFromFront"
4ECF14:  MOVS            R2, #0
4ECF16:  MOV.W           R3, #0x194
4ECF1A:  ADD             R1, PC; "HitFromFront"
4ECF1C:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ECF20:  MOVS            R1, #0
4ECF22:  STR             R2, [SP,#0x18+var_10]
4ECF24:  MOVS            R2, #0x20 ; ' '
4ECF26:  MOV.W           R3, #0x40800000
4ECF2A:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ECF2E:  LDR             R1, =(_ZTV23CTaskSimpleHitFromFront_ptr - 0x4ECF34)
4ECF30:  ADD             R1, PC; _ZTV23CTaskSimpleHitFromFront_ptr ; unsigned int
4ECF32:  B               loc_4ECFAA
4ECF34:  MOVS            R0, #dword_20; jumptable 004ECF04 case 2
4ECF36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECF3A:  LDR             R1, =(aHitfromback - 0x4ECF46); "HitFromBack"
4ECF3C:  MOVS            R2, #0
4ECF3E:  MOVW            R3, #0x193
4ECF42:  ADD             R1, PC; "HitFromBack"
4ECF44:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ECF48:  MOVS            R1, #0
4ECF4A:  STR             R2, [SP,#0x18+var_10]
4ECF4C:  MOVS            R2, #0x22 ; '"'
4ECF4E:  MOV.W           R3, #0x40800000
4ECF52:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ECF56:  LDR             R1, =(_ZTV22CTaskSimpleHitFromBack_ptr - 0x4ECF5C)
4ECF58:  ADD             R1, PC; _ZTV22CTaskSimpleHitFromBack_ptr ; unsigned int
4ECF5A:  B               loc_4ECFAA
4ECF5C:  MOVS            R0, #dword_20; jumptable 004ECF04 case 3
4ECF5E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECF62:  LDR             R1, =(aHitfromright - 0x4ECF6E); "HitFromRight"
4ECF64:  MOVS            R2, #0
4ECF66:  MOV.W           R3, #0x196
4ECF6A:  ADD             R1, PC; "HitFromRight"
4ECF6C:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ECF70:  MOVS            R1, #0
4ECF72:  STR             R2, [SP,#0x18+var_10]
4ECF74:  MOVS            R2, #0x23 ; '#'
4ECF76:  MOV.W           R3, #0x40800000
4ECF7A:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ECF7E:  LDR             R1, =(_ZTV23CTaskSimpleHitFromRight_ptr - 0x4ECF84)
4ECF80:  ADD             R1, PC; _ZTV23CTaskSimpleHitFromRight_ptr ; unsigned int
4ECF82:  B               loc_4ECFAA
4ECF84:  MOVS            R0, #dword_20; jumptable 004ECF04 case 1
4ECF86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECF8A:  LDR             R1, =(aHitfromleft - 0x4ECF96); "HitFromLeft"
4ECF8C:  MOVS            R2, #0
4ECF8E:  MOVW            R3, #0x195
4ECF92:  ADD             R1, PC; "HitFromLeft"
4ECF94:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ECF98:  MOVS            R1, #0
4ECF9A:  STR             R2, [SP,#0x18+var_10]
4ECF9C:  MOVS            R2, #0x21 ; '!'
4ECF9E:  MOV.W           R3, #0x40800000
4ECFA2:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ECFA6:  LDR             R1, =(_ZTV22CTaskSimpleHitFromLeft_ptr - 0x4ECFAC)
4ECFA8:  ADD             R1, PC; _ZTV22CTaskSimpleHitFromLeft_ptr
4ECFAA:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitFromBack
4ECFAC:  ADDS            R1, #8
4ECFAE:  STR             R1, [R0]
4ECFB0:  ADD             SP, SP, #0x10
4ECFB2:  POP             {R7,PC}
