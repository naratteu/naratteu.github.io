(async ({ innerText }) => {
  const { run } = await import("https://esm.sh/livescript");
  run(innerText);
})(document.currentScript);