; ModuleID = '<stdin>'

module asm "this is an inline asm block"
module asm "this is another inline asm block"

define i32 @test() {
  %X = call i32 asm "tricky here $0, $1", "=r,r"(i32 4)
  call void asm sideeffect "eieio", ""()
  ret i32 %X
}
