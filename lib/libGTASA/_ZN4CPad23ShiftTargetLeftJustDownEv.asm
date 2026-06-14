; =========================================================
; Game Engine Function: _ZN4CPad23ShiftTargetLeftJustDownEv
; Address            : 0x3FB90C - 0x3FB97C
; =========================================================

3FB90C:  PUSH            {R4,R5,R7,LR}
3FB90E:  ADD             R7, SP, #8
3FB910:  MOV             R5, R0
3FB912:  MOV.W           R0, #0xFFFFFFFF; int
3FB916:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FB91A:  MOV             R4, R0
3FB91C:  MOVS            R0, #0
3FB91E:  CBZ             R4, locret_3FB976
3FB920:  LDRH.W          R1, [R5,#0x110]
3FB924:  CMP             R1, #0
3FB926:  IT NE
3FB928:  POPNE           {R4,R5,R7,PC}
3FB92A:  MOVS            R0, #0x62 ; 'b'
3FB92C:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
3FB930:  CBNZ            R0, loc_3FB954
3FB932:  LDRSB.W         R0, [R4,#0x71C]
3FB936:  RSB.W           R0, R0, R0,LSL#3
3FB93A:  ADD.W           R0, R4, R0,LSL#2
3FB93E:  LDR.W           R5, [R0,#0x5A4]
3FB942:  MOV             R0, R4; this
3FB944:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
3FB948:  MOV             R1, R0
3FB94A:  MOV             R0, R5
3FB94C:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3FB950:  LDR             R0, [R0]
3FB952:  CBZ             R0, loc_3FB978
3FB954:  LDR.W           R0, [R4,#0x444]
3FB958:  LDRB.W          R0, [R0,#0x34]
3FB95C:  LSLS            R0, R0, #0x1C
3FB95E:  BMI             loc_3FB978
3FB960:  MOVS            R0, #0xAF
3FB962:  MOVS            R1, #1
3FB964:  BLX             j__ZN15CTouchInterface12IsSwipedLeftENS_9WidgetIDsEi; CTouchInterface::IsSwipedLeft(CTouchInterface::WidgetIDs,int)
3FB968:  CMP             R0, #1
3FB96A:  BNE             loc_3FB978
3FB96C:  MOV.W           R0, #(elf_hash_bucket+0x704); this
3FB970:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FB974:  MOVS            R0, #1
3FB976:  POP             {R4,R5,R7,PC}
3FB978:  MOVS            R0, #0
3FB97A:  POP             {R4,R5,R7,PC}
