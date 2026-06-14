; =========================================================
; Game Engine Function: _ZNK23CEventScriptedAttractor13CloneEditableEv
; Address            : 0x4C24FC - 0x4C251E
; =========================================================

4C24FC:  PUSH            {R4,R6,R7,LR}
4C24FE:  ADD             R7, SP, #8
4C2500:  MOV             R4, R0
4C2502:  MOVS            R0, #dword_1C; this
4C2504:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4C2508:  LDRD.W          R1, R2, [R4,#0x10]; this
4C250C:  MOVS            R3, #0
4C250E:  BLX             j__ZN15CEventAttractorC2EP9C2dEffectP7CEntityh; CEventAttractor::CEventAttractor(C2dEffect *,CEntity *,uchar)
4C2512:  LDR             R1, =(_ZTV23CEventScriptedAttractor_ptr - 0x4C2518)
4C2514:  ADD             R1, PC; _ZTV23CEventScriptedAttractor_ptr
4C2516:  LDR             R1, [R1]; `vtable for'CEventScriptedAttractor ...
4C2518:  ADDS            R1, #8
4C251A:  STR             R1, [R0]
4C251C:  POP             {R4,R6,R7,PC}
