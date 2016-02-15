<challenges>
  <div class="challenge-summary-card" each={ challenges }>
    <div class="challenge-thumbnail" style={ "background-image: url(" + imageUrl + ")" }></div>
    <div class="challenge-content">
      <h3>{ title }</h3>
      <h4>{ organizationName }</h4>
      <div class="info-bit-container">
        <div class="info-bit">
          <p>Estatus</p>
          <h3>{ status }</h3>
        </div>
        <div class="info-bit">
          <p>Participantes</p>
          <h3>{ numberOfCollaborators }</h3>
        </div>
      </div>
    </div>
    <div class="challenge-decorators">
      <p id="challenge-badge">{ organizationType }</p>
      <p id="due-date">{ closesOn }</p>
    </div>
  </div>


  <script>
    this.challenges = opts.data;
  </script>
</challenges>
