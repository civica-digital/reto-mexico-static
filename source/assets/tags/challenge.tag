<challenges>
  <div class="challenge-card" each={ challenges }>
    <div class="challenge-card-head" style={ avatarStyle }>
      <a href='{ challengeUrl }'>
        <div class="challenge-card-type">
          { organizationType }
        </div>
      </a>
    </div>


    <div class="challenge-card-body">
      <a href='{ challengeUrl }'>
        <h5 class="challenge-card-title">
          { title }
        </h5>
      </a>

      <ul class="challenge-card-metadata">
        <li>
          <p><a href='{ challengeUrl }'>{ organizationName }</a></p>
        </li>
        <li>
          <p>
            Etapa { currentPhaseNumber }:
            <span>{ currentPhaseName }</span>
          </p>
        </li>
        <li>
          <p>
            Inició:
            <span>{ startsOn }</span>
          </p>
        </li>
      </ul>
    </div>

    <div class="challenge-card-footer">
      <span class="challenge-card-collaborators-number">{ numberOfCollaborators || '0' } participantes</span>
    </div>
  </div>


  <script>
    this.challenges = opts.data.map(function(_challenge){
      // Here you should process or add any data transformation, translation, etc.
      return {
        title: _challenge.title,
        organizationName: _challenge.organization_name || 'Reto México',
        organizationType: _challenge.organization_type || 'Público',
        closesOn: 'Cierra ' + _challenge.finish_on,
        startsOn:  _challenge.starts_at,
        status: (_challenge.status === 'open' && 'Abierto') || (_challenge.status === 'closed' && 'Cerrado') || 'N/D',
        avatarStyle: "background-image: url("  + (_challenge.image_url || 'https://retos-publicos.s3.amazonaws.com/uploads/project_avatar/17/RETO_REVALIDA-01_certificacion.png') +   ")",
        numberOfCollaborators: _challenge.number_of_collaborators || 'N/D',
        challengeUrl: _challenge.challenge_url || '#',
        currentPhaseNumber: _challenge.current_phase_number,
        currentPhaseName: _challenge.current_phase_name,
        numberOfCollaborators: _challenge.collaborators_count
      }
    });
  </script>
</challenges>
