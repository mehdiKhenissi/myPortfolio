<script style></script>
<template>
    <div id="binary-loading-content">
        <div class="binary-loader">
            <div class="binary-line">
            01010111 01100101 01101100 01100011 01101111 01101101 01100101 00100000 01110100 01101111 00100000 01001101 01000101 01101000 01100100 01101001 00100000 01001011 01101000 01100101 01101110 01101001 01110011 01110011 01101001 00100000 01010000 01101111 01110010 01110100 01100110 01101111 01101100 01101001 01101111
            </div>
        </div>
    </div>
</template>
<style scoped>
#binary-loading-content {
    position: absolute;
    margin: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgba(0, 0, 0, 0.8);
  }

  .binary-loader {
    width: 70%;
    font-family: monospace;
    color: lime;
    font-size: 1.5rem;
    line-height: 1.5;
    white-space: pre;
    overflow: hidden;
    height: 10em; /* nombre de lignes visibles */
  }

  .binary-line {
    text-align: center;
    white-space: break-spaces;
    animation: scroll 2s linear infinite;
  }

  @keyframes scroll {
    0% { transform: translateY(100%); }
    100% { transform: translateY(-100%); }
  }
</style>