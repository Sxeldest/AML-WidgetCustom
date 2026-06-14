; =========================================================
; Game Engine Function: _ZNK28CEventPedCollisionWithPlayer5CloneEv
; Address            : 0x4C2758 - 0x4C2790
; =========================================================

4C2758:  PUSH            {R4,R5,R7,LR}
4C275A:  ADD             R7, SP, #8
4C275C:  SUB             SP, SP, #0x10; CVector *
4C275E:  MOV             R4, R0
4C2760:  MOVS            R0, #word_30; this
4C2762:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4C2766:  LDRD.W          R2, R3, [R4,#0xC]; CPed *
4C276A:  ADD.W           R5, R4, #0x20 ; ' '
4C276E:  LDRH            R1, [R4,#0xA]; unsigned __int16
4C2770:  LDRSH.W         R12, [R4,#0x2C]
4C2774:  LDRSH.W         LR, [R4,#0x2E]
4C2778:  ADDS            R4, #0x14
4C277A:  STMEA.W         SP, {R4,R5,R12,LR}
4C277E:  BLX             j__ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii_0; CEventPedCollisionWithPed::CEventPedCollisionWithPed(ushort,float,CPed const*,CVector const&,CVector const&,int,int)
4C2782:  LDR             R1, =(_ZTV28CEventPedCollisionWithPlayer_ptr - 0x4C2788)
4C2784:  ADD             R1, PC; _ZTV28CEventPedCollisionWithPlayer_ptr
4C2786:  LDR             R1, [R1]; `vtable for'CEventPedCollisionWithPlayer ...
4C2788:  ADDS            R1, #8
4C278A:  STR             R1, [R0]
4C278C:  ADD             SP, SP, #0x10
4C278E:  POP             {R4,R5,R7,PC}
