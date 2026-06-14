; =========================================================
; Game Engine Function: sub_1357A0
; Address            : 0x1357A0 - 0x1357CC
; =========================================================

1357A0:  PUSH            {R4,R6,R7,LR}
1357A2:  ADD             R7, SP, #8
1357A4:  MOV             R4, R0
1357A6:  LDR             R0, =(_ZTVN13ControlLayout11ValueEditorE - 0x1357B0); `vtable for'ControlLayout::ValueEditor ...
1357A8:  LDRB.W          R1, [R4,#0x78]
1357AC:  ADD             R0, PC; `vtable for'ControlLayout::ValueEditor
1357AE:  ADDS            R0, #8
1357B0:  STR             R0, [R4]
1357B2:  LSLS            R0, R1, #0x1F
1357B4:  ITT NE
1357B6:  LDRNE.W         R0, [R4,#0x80]; void *
1357BA:  BLXNE           j__ZdlPv; operator delete(void *)
1357BE:  MOV             R0, R4
1357C0:  BL              sub_12BCE4
1357C4:  POP.W           {R4,R6,R7,LR}
1357C8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
