; =========================================================
; Game Engine Function: _ZNK32CEventPlayerCommandToGroupGather13CloneEditableEv
; Address            : 0x4CA7A0 - 0x4CA7C0
; =========================================================

4CA7A0:  PUSH            {R4,R6,R7,LR}
4CA7A2:  ADD             R7, SP, #8
4CA7A4:  MOV             R4, R0
4CA7A6:  MOVS            R0, #off_18; this
4CA7A8:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4CA7AC:  LDR             R2, [R4,#0x14]; CPed *
4CA7AE:  MOVS            R1, #2; int
4CA7B0:  BLX             j__ZN26CEventPlayerCommandToGroupC2EiP4CPed; CEventPlayerCommandToGroup::CEventPlayerCommandToGroup(int,CPed *)
4CA7B4:  LDR             R1, =(_ZTV32CEventPlayerCommandToGroupGather_ptr - 0x4CA7BA)
4CA7B6:  ADD             R1, PC; _ZTV32CEventPlayerCommandToGroupGather_ptr
4CA7B8:  LDR             R1, [R1]; `vtable for'CEventPlayerCommandToGroupGather ...
4CA7BA:  ADDS            R1, #8
4CA7BC:  STR             R1, [R0]
4CA7BE:  POP             {R4,R6,R7,PC}
