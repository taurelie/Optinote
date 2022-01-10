const initColorBtn = () => {
  const btns = document.querySelectorAll(".obs_color-selector")
  if (btns.length > 0) {
    btns.forEach((btn)=>{
      btn.nextElementSibling.style.backgroundColor = btn.value;
    })
  }
}

export {initColorBtn}
