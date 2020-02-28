
export const alertSpin = () => {
  document.querySelectorAll(".lair-card-disabled").forEach((card) => {
    card.addEventListener("click", (event) => {
      const node = event.currentTarget.childNodes[1];
      const audio = new Audio()
      audio.src = document.getElementById("audio_source").dataset.src
      node.setAttribute("style", "animation-play-state: running;");
      audio.play()
    });
  });
}
