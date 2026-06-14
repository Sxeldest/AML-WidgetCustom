; =========================================================
; Game Engine Function: _ZN8CPickups25GenerateNewOne_WeaponTypeE7CVector11eWeaponTypehjbPc
; Address            : 0x31F18C - 0x31F1D0
; =========================================================

31F18C:  PUSH            {R4-R7,LR}
31F18E:  ADD             R7, SP, #0xC
31F190:  PUSH.W          {R11}
31F194:  SUB             SP, SP, #0x18
31F196:  MOV             R5, R1
31F198:  MOV             R6, R0
31F19A:  MOV             R0, R3
31F19C:  MOVS            R1, #1
31F19E:  MOV             R4, R2
31F1A0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
31F1A4:  ADD.W           R12, R7, #8
31F1A8:  LDR.W           LR, [R7,#arg_C]
31F1AC:  LDM.W           R12, {R1,R2,R12}
31F1B0:  LDR             R3, [R0,#0xC]
31F1B2:  MOVS            R0, #0
31F1B4:  STRD.W          R1, R2, [SP,#0x28+var_28]
31F1B8:  ADD             R1, SP, #0x28+var_20
31F1BA:  STM.W           R1, {R0,R12,LR}
31F1BE:  MOV             R0, R6
31F1C0:  MOV             R1, R5
31F1C2:  MOV             R2, R4
31F1C4:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
31F1C8:  ADD             SP, SP, #0x18
31F1CA:  POP.W           {R11}
31F1CE:  POP             {R4-R7,PC}
