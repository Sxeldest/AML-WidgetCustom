; =========================================================
; Game Engine Function: _ZNK20CTaskSimpleIKManager5CloneEv
; Address            : 0x4EFB84 - 0x4EFBE4
; =========================================================

4EFB84:  PUSH            {R4,R5,R7,LR}
4EFB86:  ADD             R7, SP, #8
4EFB88:  MOV             R5, R0
4EFB8A:  MOVS            R0, #dword_1C; this
4EFB8C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EFB90:  MOV             R4, R0
4EFB92:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EFB96:  LDR             R0, =(_ZTV20CTaskSimpleIKManager_ptr - 0x4EFBA4)
4EFB98:  VMOV.I32        Q8, #0
4EFB9C:  ADD.W           R1, R4, #8
4EFBA0:  ADD             R0, PC; _ZTV20CTaskSimpleIKManager_ptr
4EFBA2:  VST1.32         {D16-D17}, [R1]
4EFBA6:  MOVS            R1, #0
4EFBA8:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKManager ...
4EFBAA:  STRB            R1, [R4,#0x18]
4EFBAC:  ADDS            R0, #8
4EFBAE:  STR             R0, [R4]
4EFBB0:  LDR             R0, [R5,#8]
4EFBB2:  CBZ             R0, loc_4EFBBC
4EFBB4:  LDR             R1, [R0]
4EFBB6:  LDR             R1, [R1,#8]
4EFBB8:  BLX             R1
4EFBBA:  STR             R0, [R4,#8]
4EFBBC:  LDR             R0, [R5,#0xC]
4EFBBE:  CBZ             R0, loc_4EFBC8
4EFBC0:  LDR             R1, [R0]
4EFBC2:  LDR             R1, [R1,#8]
4EFBC4:  BLX             R1
4EFBC6:  STR             R0, [R4,#0xC]
4EFBC8:  LDR             R0, [R5,#0x10]
4EFBCA:  CBZ             R0, loc_4EFBD4
4EFBCC:  LDR             R1, [R0]
4EFBCE:  LDR             R1, [R1,#8]
4EFBD0:  BLX             R1
4EFBD2:  STR             R0, [R4,#0x10]
4EFBD4:  LDR             R0, [R5,#0x14]
4EFBD6:  CBZ             R0, loc_4EFBE0
4EFBD8:  LDR             R1, [R0]
4EFBDA:  LDR             R1, [R1,#8]
4EFBDC:  BLX             R1
4EFBDE:  STR             R0, [R4,#0x14]
4EFBE0:  MOV             R0, R4
4EFBE2:  POP             {R4,R5,R7,PC}
