import Swal from "sweetalert2";

const modalTrigger = () => {
  const observations = document.querySelectorAll('.filterDiv');
  if (observations.length >= 1) {
    observations.forEach(obsDiv => {
      obsDiv.querySelector("#obs-title").addEventListener('click', event => {
        /* Generqte sweetalert */
        const content = obsDiv.dataset.noteContent;
        Swal.fire(
          `Observation du ${obsDiv.dataset.noteDate}`,
          content,
        )
      })
    })
  }
}
export {modalTrigger}
