; =========================================================
; Game Engine Function: _ZN16CAEStaticChannelC2Etjt
; Address            : 0x3A9034 - 0x3A9052
; =========================================================

3A9034:  PUSH            {R7,LR}; Alternative name is 'CAEStaticChannel::CAEStaticChannel(unsigned short, unsigned int, unsigned short)'
3A9036:  MOV             R7, SP
3A9038:  BLX             j__ZN15CAEAudioChannelC2Etjt; CAEAudioChannel::CAEAudioChannel(ushort,uint,ushort)
3A903C:  LDR             R1, =(_ZTV16CAEStaticChannel_ptr - 0x3A9048)
3A903E:  MOVS            R2, #0
3A9040:  STRB.W          R2, [R0,#0x2B]
3A9044:  ADD             R1, PC; _ZTV16CAEStaticChannel_ptr
3A9046:  STRB.W          R2, [R0,#0x2D]
3A904A:  LDR             R1, [R1]; `vtable for'CAEStaticChannel ...
3A904C:  ADDS            R1, #8
3A904E:  STR             R1, [R0]
3A9050:  POP             {R7,PC}
