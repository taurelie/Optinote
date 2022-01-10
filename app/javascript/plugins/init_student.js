const modalTrigger = () => {
const triggerModal = document.querySelectorAll('.filterDiv');
const modals = document.querySelectorAll('.modal-obs');
triggerModal.forEach(link => {
  link.addEventListener('click', event => {
    modals.forEach(modal => {
      if (modal.dataset.modalId === event.currentTarget.dataset.linkId) {
        modal.classList.add('show');
      }
    })
  })
})

const closeBtns = document.querySelectorAll('.closeBtn');
closeBtns.forEach(closeBtn => {
  closeBtn.addEventListener('click', event => {
    modals.forEach(modal => {
      console.log('yy')
      if (modal.dataset.modalId === event.currentTarget.dataset.closeId) {
        modal.classList.remove('show');
      }
    })
  })
})
}

export {modalTrigger}
