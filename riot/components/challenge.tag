<challenges>
  <div class="challenge-summary-card" each={ challenges }>
    <div class="challenge-thumbnail" style={ "background-image: url(" + avatarUrl + ")" }></div>
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
          <h3>{ numberOfCollaborators || 'N/D' }</h3>
        </div>
      </div>
    </div>
    <div class="challenge-decorators">
      <p id="challenge-badge">{ organizationType }</p>
      <p id="due-date">{ closesOn }</p>
    </div>
  </div>


  <script>
    this.challenges = opts.data.map(function(_challenge){
      // Here you should process or add any data transformation, translation, etc.
      return {
        title: _challenge.title,
        organizationName: (_challenge.organization && _challenge.organization.name) || 'No disponible',
        organizationType: _challenge.organization_type || 'N/D',
        closesOn: 'Cierra ' + _challenge.finish_on,
        status: (_challenge.status === 'open' && 'Abierto') || (_challenge.status === 'closed' && 'Cerrado') || 'N/D',
        avatarUrl: _challenge.image_url || 'https://retos-publicos.s3.amazonaws.com/uploads/project_avatar/17/RETO_REVALIDA-01_certificacion.png',
        numberOfCollaborators: _challenge.number_of_collaborators || 'N/D'
      }
    });
  </script>
</challenges>
