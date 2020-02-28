
export const alertSpin = () => {
  document.querySelectorAll(".lair-card-disabled").forEach((card) => {
    card.addEventListener("click", (event) => {
      const node = event.currentTarget.childNodes[1];
      console.log(node);
      node.setAttribute("style", "animation-play-state: running;");
    });
  });
}
