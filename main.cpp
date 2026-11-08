#include <raylib.h>
#include <stdio.h>

int main() {
  printf("Hello, world!\n");
  InitWindow(800, 600, "Hello, Raylib!");

  SetTargetFPS(60);

  while (!WindowShouldClose()) {
    BeginDrawing();
    ClearBackground(LIGHTGRAY);
    DrawText("Hello!", 400 - MeasureText("Hello!", 50) / 2, 250, 50, DARKGRAY);
    EndDrawing();
  }

  CloseWindow();
  return 0;
}
