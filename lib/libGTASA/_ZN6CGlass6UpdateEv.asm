; =========================================================
; Game Engine Function: _ZN6CGlass6UpdateEv
; Address            : 0x5AB458 - 0x5AB47E
; =========================================================

5AB458:  PUSH            {R4,R5,R7,LR}
5AB45A:  ADD             R7, SP, #8
5AB45C:  LDR             R0, =(_ZN6CGlass11aGlassPanesE_ptr - 0x5AB464)
5AB45E:  MOVS            R5, #0x2D ; '-'
5AB460:  ADD             R0, PC; _ZN6CGlass11aGlassPanesE_ptr
5AB462:  LDR             R4, [R0]; CGlass::aGlassPanes ...
5AB464:  LDRB.W          R0, [R4,#0x6D]
5AB468:  CMP             R0, #0
5AB46A:  ITT NE
5AB46C:  MOVNE           R0, R4; this
5AB46E:  BLXNE.W         j__ZN17CFallingGlassPane6UpdateEv; CFallingGlassPane::Update(void)
5AB472:  SUBS            R5, #1
5AB474:  ADD.W           R4, R4, #0x70 ; 'p'
5AB478:  IT EQ
5AB47A:  POPEQ           {R4,R5,R7,PC}
5AB47C:  B               loc_5AB464
