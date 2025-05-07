<script module lang="ts">
  let shifted = $state(false);
</script>
 
<div class='x-element' style={ `padding: 0; width: 90%; height: 90%; left: ${shifted ? -100 : 5}%; top: 5%`}>
</div>

<button class='x-element' style={ `width: 20%; height: 20%; left: ${shifted ? 1 : 40}%; top: 40%;`} onclick={() => shifted=!shifted}>
	CLICK ME!
</button>

<style>
  :global(body) {
    background-color: #F2F0EF;
  }
  .x-element {
    transition: left 2s;

    position: absolute;
    padding: 1rem;
    border: 4px #2B50AA solid;
    border-radius: 0.25rem;
    font-weight: 800;
  }

  button {
    color: #2B50AA;
    background-color: #FF9FE5;
  }
</style>