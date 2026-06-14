; =========================================================
; Game Engine Function: _ZNK28CEventPlayerCollisionWithPed5CloneEv
; Address            : 0x4C2708 - 0x4C2740
; =========================================================

4C2708:  PUSH            {R4,R5,R7,LR}
4C270A:  ADD             R7, SP, #8
4C270C:  SUB             SP, SP, #0x10; CVector *
4C270E:  MOV             R4, R0
4C2710:  MOVS            R0, #word_30; this
4C2712:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4C2716:  LDRD.W          R2, R3, [R4,#0xC]; CPed *
4C271A:  ADD.W           R5, R4, #0x20 ; ' '
4C271E:  LDRH            R1, [R4,#0xA]; unsigned __int16
4C2720:  LDRSH.W         R12, [R4,#0x2C]
4C2724:  LDRSH.W         LR, [R4,#0x2E]
4C2728:  ADDS            R4, #0x14
4C272A:  STMEA.W         SP, {R4,R5,R12,LR}
4C272E:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii_0; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4C2732:  LDR             R1, =(_ZTV28CEventPlayerCollisionWithPed_ptr - 0x4C2738)
4C2734:  ADD             R1, PC; _ZTV28CEventPlayerCollisionWithPed_ptr
4C2736:  LDR             R1, [R1]; `vtable for'CEventPlayerCollisionWithPed ...
4C2738:  ADDS            R1, #8
4C273A:  STR             R1, [R0]
4C273C:  ADD             SP, SP, #0x10
4C273E:  POP             {R4,R5,R7,PC}
