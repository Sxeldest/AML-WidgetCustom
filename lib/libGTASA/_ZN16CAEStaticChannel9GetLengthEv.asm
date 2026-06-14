; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel9GetLengthEv
; Address            : 0x3A952E - 0x3A953A
; =========================================================

3A952E:  PUSH            {R7,LR}
3A9530:  MOV             R7, SP
3A9532:  LDR             R1, [R0,#0x10]; CAEAudioUtility *
3A9534:  BLX             j__ZN15CAEAudioChannel20ConvertFromBytesToMSEj; CAEAudioChannel::ConvertFromBytesToMS(uint)
3A9538:  POP             {R7,PC}
