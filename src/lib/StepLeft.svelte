<script module lang="ts">
  let shifted = $state(false);
</script>
 
<div class='content-section x-element' style={ `left: ${shifted ? -100 : 2}%;`}>
</div>

<div class='content-section x-element' style={ `left: ${shifted ? 2 : 100 }%;`}>
</div>

<button class='x-element' style={ `width: 10%; height: 10%; left: ${shifted ? 1 : 89}%; top: 45%;`} onclick={() => shifted=!shifted}>
	{#if shifted}
  	Last Page
  {:else}
    Next Page
  {/if}
</button>

<style>
  :global(body) {
    background-color: #F2F0EF;
  }

  .content-section {
    padding: 0;
    width: 96%;
    height: 96%; 
    top: 2%;
    border: 4px #2B50AA solid;
    border-radius: 0.25rem;
    background-color: #2B50AA;
  }

  .x-element {
    transition: left 2s;

    position: absolute;
    font-weight: 800;
  }

  button {
    border: 4px #2B50AA solid;
    border-radius: 0.25rem;
    color: #2B50AA;
    background-color: #FF9FE5 !important;
  }
</style>