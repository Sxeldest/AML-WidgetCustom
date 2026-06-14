; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c14CreateInstanceEv
; Address            : 0x366D04 - 0x366D1E
; =========================================================

366D04:  PUSH            {R7,LR}
366D06:  MOV             R7, SP
366D08:  MOVS            R0, #0x14; unsigned int
366D0A:  BLX             _Znwj; operator new(uint)
366D0E:  BLX             j__ZN8FxPrim_cC2Ev; FxPrim_c::FxPrim_c(void)
366D12:  LDR             R1, =(_ZTV11FxEmitter_c_ptr - 0x366D18)
366D14:  ADD             R1, PC; _ZTV11FxEmitter_c_ptr
366D16:  LDR             R1, [R1]; `vtable for'FxEmitter_c ...
366D18:  ADDS            R1, #8
366D1A:  STR             R1, [R0]
366D1C:  POP             {R7,PC}
