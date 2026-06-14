; =========================================================
; Game Engine Function: sub_1A9C34
; Address            : 0x1A9C34 - 0x1A9C5E
; =========================================================

1A9C34:  LDR             R0, =(_ZN10CExplosion22m_ExplosionAudioEntityE_ptr - 0x1A9C40)
1A9C36:  LDR             R2, =(_ZTV23CAEExplosionAudioEntity_ptr - 0x1A9C42)
1A9C38:  LDR.W           R12, =(_ZN14CAEAudioEntityD2Ev_ptr - 0x1A9C44)
1A9C3C:  ADD             R0, PC; _ZN10CExplosion22m_ExplosionAudioEntityE_ptr
1A9C3E:  ADD             R2, PC; _ZTV23CAEExplosionAudioEntity_ptr
1A9C40:  ADD             R12, PC; _ZN14CAEAudioEntityD2Ev_ptr
1A9C42:  LDR             R1, [R0]; obj
1A9C44:  LDR             R3, [R2]; `vtable for'CAEExplosionAudioEntity ...
1A9C46:  LDR             R2, =(unk_67A000 - 0x1A9C52)
1A9C48:  LDR.W           R0, [R12]; CAEAudioEntity::~CAEAudioEntity() ; lpfunc
1A9C4C:  ADDS            R3, #8
1A9C4E:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A9C50:  STR             R3, [R1]; CExplosion::m_ExplosionAudioEntity
1A9C52:  MOVS            R3, #0
1A9C54:  STR             R3, [R1,#(dword_A84300 - 0xA842F0)]
1A9C56:  STRB.W          R3, [R1,#(byte_A8436C - 0xA842F0)]
1A9C5A:  B.W             j___cxa_atexit
