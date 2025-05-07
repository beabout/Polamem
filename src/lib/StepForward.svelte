<script module lang="ts">
  let grown = $state(false);
</script>
 
<div class='x-element' style={ `padding: 0; width: ${grown ? 180 : 20}%; height: ${grown ? 180 : 20}%; left: ${grown ? -40 : 40}%; top: ${grown ? -40 : 40}%;`}>
</div>

<button class='x-element' style={ `width: ${grown ? 98 : 10}%; height: ${grown ? 98 : 10}%; left: ${grown ? 1 : 45}%; top: ${grown ? 1 : 45}%;`} onclick={() => grown=!grown}>
  CLICK ME!
</button>

<style>
  :global(body) {
    background-color: #F2F0EF;
  }
  .x-element {
    transition: top 2s,
      left 2s,
      width 2s,
      height 2s;

    position: absolute;
    padding: 1rem;
    border: 4px #FF9FE5 solid;
    border-radius: 0.25rem;
    font-weight: 800;
  }

  button {
    color: #2B50AA;
    background-color: inherit;
  }
</style>