; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannelD0Ev
; Address            : 0x3A970C - 0x3A971C
; =========================================================

3A970C:  PUSH            {R7,LR}
3A970E:  MOV             R7, SP
3A9710:  BLX             j__ZN19CAEStreamingChannelD2Ev; CAEStreamingChannel::~CAEStreamingChannel()
3A9714:  POP.W           {R7,LR}
3A9718:  B.W             j__ZdlPv; operator delete(void *)
