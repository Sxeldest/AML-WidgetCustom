; =========================================================
; Game Engine Function: _ZN29CTaskComplexWaitForDryWeather18CreateFirstSubTaskEP4CPed
; Address            : 0x4EE488 - 0x4EE4B8
; =========================================================

4EE488:  PUSH            {R7,LR}
4EE48A:  MOV             R7, SP
4EE48C:  MOVS            R0, #dword_20; this
4EE48E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE492:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EE496:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4EE4A4)
4EE498:  MOV.W           R2, #0x3E8
4EE49C:  STR             R2, [R0,#8]
4EE49E:  MOVS            R2, #0
4EE4A0:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4EE4A2:  MOV.W           R3, #0x41000000
4EE4A6:  STRH            R2, [R0,#0x14]
4EE4A8:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4EE4AA:  STR             R3, [R0,#0x1C]
4EE4AC:  STRH            R2, [R0,#0x18]
4EE4AE:  ADDS            R1, #8
4EE4B0:  STRD.W          R2, R2, [R0,#0xC]
4EE4B4:  STR             R1, [R0]
4EE4B6:  POP             {R7,PC}
