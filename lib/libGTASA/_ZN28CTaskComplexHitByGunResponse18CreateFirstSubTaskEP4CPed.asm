; =========================================================
; Game Engine Function: _ZN28CTaskComplexHitByGunResponse18CreateFirstSubTaskEP4CPed
; Address            : 0x4ED00C - 0x4ED0CC
; =========================================================

4ED00C:  LDR             R0, [R0,#0xC]
4ED00E:  CMP             R0, #3
4ED010:  ITT HI
4ED012:  MOVHI           R0, #0
4ED014:  BXHI            LR
4ED016:  PUSH            {R7,LR}
4ED018:  MOV             R7, SP
4ED01A:  SUB             SP, SP, #0x10
4ED01C:  TBB.W           [PC,R0]; switch 4 cases
4ED020:  DCB 2; jump table for switch statement
4ED021:  DCB 0x3E
4ED022:  DCB 0x16
4ED023:  DCB 0x2A
4ED024:  MOVS            R0, #dword_20; jumptable 004ED01C case 0
4ED026:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED02A:  LDR             R1, =(aHitbygunfromfr - 0x4ED036); "HitByGunFromFront"
4ED02C:  MOVS            R2, #0
4ED02E:  MOV.W           R3, #0x198
4ED032:  ADD             R1, PC; "HitByGunFromFront"
4ED034:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ED038:  MOVS            R1, #0
4ED03A:  STR             R2, [SP,#0x18+var_10]
4ED03C:  MOVS            R2, #0x1C
4ED03E:  MOV.W           R3, #0x40800000
4ED042:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ED046:  LDR             R1, =(_ZTV28CTaskSimpleHitByGunFromFront_ptr - 0x4ED04C)
4ED048:  ADD             R1, PC; _ZTV28CTaskSimpleHitByGunFromFront_ptr ; unsigned int
4ED04A:  B               loc_4ED0C2
4ED04C:  MOVS            R0, #dword_20; jumptable 004ED01C case 2
4ED04E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED052:  LDR             R1, =(aHitbygunfromre - 0x4ED05E); "HitByGunFromRear"
4ED054:  MOVS            R2, #0
4ED056:  MOVW            R3, #0x197
4ED05A:  ADD             R1, PC; "HitByGunFromRear"
4ED05C:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ED060:  MOVS            R1, #0
4ED062:  STR             R2, [SP,#0x18+var_10]
4ED064:  MOVS            R2, #0x1E
4ED066:  MOV.W           R3, #0x40800000
4ED06A:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ED06E:  LDR             R1, =(_ZTV27CTaskSimpleHitByGunFromRear_ptr - 0x4ED074)
4ED070:  ADD             R1, PC; _ZTV27CTaskSimpleHitByGunFromRear_ptr ; unsigned int
4ED072:  B               loc_4ED0C2
4ED074:  MOVS            R0, #dword_20; jumptable 004ED01C case 3
4ED076:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED07A:  LDR             R1, =(aHitbygunfromri - 0x4ED086); "HitByGunFromRight"
4ED07C:  MOVS            R2, #0
4ED07E:  MOV.W           R3, #0x19A
4ED082:  ADD             R1, PC; "HitByGunFromRight"
4ED084:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ED088:  MOVS            R1, #0
4ED08A:  STR             R2, [SP,#0x18+var_10]
4ED08C:  MOVS            R2, #0x1F
4ED08E:  MOV.W           R3, #0x40800000
4ED092:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ED096:  LDR             R1, =(_ZTV28CTaskSimpleHitByGunFromRight_ptr - 0x4ED09C)
4ED098:  ADD             R1, PC; _ZTV28CTaskSimpleHitByGunFromRight_ptr ; unsigned int
4ED09A:  B               loc_4ED0C2
4ED09C:  MOVS            R0, #dword_20; jumptable 004ED01C case 1
4ED09E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED0A2:  LDR             R1, =(aHitbygunfromle - 0x4ED0AE); "HitByGunFromLeft"
4ED0A4:  MOVS            R2, #0
4ED0A6:  MOVW            R3, #0x199
4ED0AA:  ADD             R1, PC; "HitByGunFromLeft"
4ED0AC:  STRD.W          R3, R1, [SP,#0x18+var_18]
4ED0B0:  MOVS            R1, #0
4ED0B2:  STR             R2, [SP,#0x18+var_10]
4ED0B4:  MOVS            R2, #0x1D
4ED0B6:  MOV.W           R3, #0x40800000
4ED0BA:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ED0BE:  LDR             R1, =(_ZTV27CTaskSimpleHitByGunFromLeft_ptr - 0x4ED0C4)
4ED0C0:  ADD             R1, PC; _ZTV27CTaskSimpleHitByGunFromLeft_ptr
4ED0C2:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitByGunFromRear
4ED0C4:  ADDS            R1, #8
4ED0C6:  STR             R1, [R0]
4ED0C8:  ADD             SP, SP, #0x10
4ED0CA:  POP             {R7,PC}
