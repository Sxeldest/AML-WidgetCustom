; =========================================================
; Game Engine Function: _ZN6CRopes6UpdateEv
; Address            : 0x4126E0 - 0x4127C0
; =========================================================

4126E0:  PUSH            {R7,LR}
4126E2:  MOV             R7, SP
4126E4:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x4126EA)
4126E6:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
4126E8:  LDR             R0, [R0]; CRopes::aRopes ...
4126EA:  LDRB.W          R0, [R0,#(byte_9631BD - 0x962E98)]
4126EE:  CBZ             R0, loc_4126FA
4126F0:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x4126F6)
4126F2:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
4126F4:  LDR             R0, [R0]; this
4126F6:  BLX             j__ZN5CRope6UpdateEv; CRope::Update(void)
4126FA:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x412700)
4126FC:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
4126FE:  LDR             R0, [R0]; CRopes::aRopes ...
412700:  LDRB.W          R0, [R0,#(byte_9634E5 - 0x962E98)]
412704:  CBZ             R0, loc_412714
412706:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x41270C)
412708:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
41270A:  LDR             R0, [R0]; CRopes::aRopes ...
41270C:  ADD.W           R0, R0, #0x328; this
412710:  BLX             j__ZN5CRope6UpdateEv; CRope::Update(void)
412714:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x41271A)
412716:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
412718:  LDR             R0, [R0]; CRopes::aRopes ...
41271A:  LDRB.W          R0, [R0,#(byte_96380D - 0x962E98)]
41271E:  CBZ             R0, loc_41272E
412720:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x412726)
412722:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
412724:  LDR             R0, [R0]; CRopes::aRopes ...
412726:  ADD.W           R0, R0, #0x650; this
41272A:  BLX             j__ZN5CRope6UpdateEv; CRope::Update(void)
41272E:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x412734)
412730:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
412732:  LDR             R0, [R0]; CRopes::aRopes ...
412734:  LDRB.W          R0, [R0,#(byte_963B35 - 0x962E98)]
412738:  CBZ             R0, loc_412748
41273A:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x412740)
41273C:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
41273E:  LDR             R0, [R0]; CRopes::aRopes ...
412740:  ADDW            R0, R0, #0x978; this
412744:  BLX             j__ZN5CRope6UpdateEv; CRope::Update(void)
412748:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x41274E)
41274A:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
41274C:  LDR             R0, [R0]; CRopes::aRopes ...
41274E:  LDRB.W          R0, [R0,#(byte_963E5D - 0x962E98)]
412752:  CBZ             R0, loc_412762
412754:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x41275A)
412756:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
412758:  LDR             R0, [R0]; CRopes::aRopes ...
41275A:  ADD.W           R0, R0, #0xCA0; this
41275E:  BLX             j__ZN5CRope6UpdateEv; CRope::Update(void)
412762:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x41276C)
412764:  MOVW            R1, #(byte_964185 - 0x962E98)
412768:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
41276A:  LDR             R0, [R0]; CRopes::aRopes ...
41276C:  LDRB            R0, [R0,R1]
41276E:  CBZ             R0, loc_41277E
412770:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x412776)
412772:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
412774:  LDR             R0, [R0]; CRopes::aRopes ...
412776:  ADDW            R0, R0, #0xFC8; this
41277A:  BLX             j__ZN5CRope6UpdateEv; CRope::Update(void)
41277E:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x412788)
412780:  MOVW            R1, #(byte_9644AD - 0x962E98)
412784:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
412786:  LDR             R0, [R0]; CRopes::aRopes ...
412788:  LDRB            R0, [R0,R1]
41278A:  CBZ             R0, loc_41279C
41278C:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x412796)
41278E:  MOVW            R1, #0x12F0
412792:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
412794:  LDR             R0, [R0]; CRopes::aRopes ...
412796:  ADD             R0, R1; this
412798:  BLX             j__ZN5CRope6UpdateEv; CRope::Update(void)
41279C:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x4127A6)
41279E:  MOVW            R1, #(byte_9647D5 - 0x962E98)
4127A2:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
4127A4:  LDR             R0, [R0]; CRopes::aRopes ...
4127A6:  LDRB            R0, [R0,R1]
4127A8:  CMP             R0, #0
4127AA:  IT EQ
4127AC:  POPEQ           {R7,PC}
4127AE:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x4127B8)
4127B0:  MOVW            R1, #0x1618
4127B4:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
4127B6:  LDR             R0, [R0]; CRopes::aRopes ...
4127B8:  ADD             R0, R1; this
4127BA:  POP.W           {R7,LR}
4127BE:  B               _ZN5CRope6UpdateEv; CRope::Update(void)
