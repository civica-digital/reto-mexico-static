<challenges>
  <div class="challenge-card" each={ challenges }>
    <div class="challenge-card-head" style={ avatarStyle }>
      <a href='#'>
        <div class="challenge-card-type">
          Organismo empresarial
        </div>
      </a>
    </div>


    <div class="challenge-card-body">
      <a href='#'>
        <h5 class="challenge-card-title">
          { title }
        </h5>
      </a>

      <ul class="challenge-card-metadata">
        <li>
          <p><a href='#'>{ organizationName }</a></p>
        </li>
        <li>
          <p>
            Etapa 1 de 3
            <span>{ status }</span>
          </p>
        </li>
      </ul>
    </div>

    <div class="challenge-card-footer">
      <span class="challenge-card-collaborators-number">{ numberOfCollaborators || 'N/D' } participantes</span>
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
        avatarStyle: "background-image: url("  + (_challenge.avatar_url || 'https://retos-publicos.s3.amazonaws.com/uploads/project_avatar/17/RETO_REVALIDA-01_certificacion.png') +   ")",
        numberOfCollaborators: _challenge.number_of_collaborators || 'N/D'
      }
    });
  </script>
</challenges>
