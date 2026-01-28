import React from 'react';
import ReactDOM from 'react-dom/client';
import LeadStageTracker from './components/LeadStageTracker';

// HubSpot Custom Module Entry Point
const moduleRoot = document.getElementById('hubspot-lead-stage-tracker-root');

if (moduleRoot) {
  const root = ReactDOM.createRoot(moduleRoot);
  
  // Get module data from HubSpot context
  const moduleData = (window as any).hsModuleData || {};
  
  root.render(
    <React.StrictMode>
      <LeadStageTracker
        dealName={moduleData.dealName || 'Deal Name'}
        owner={moduleData.owner || 'Owner Name'}
        leadType={moduleData.leadType || 'Lead Type'}
        stages={moduleData.stages || [
          { name: 'Initial Contact', completed: true, isActive: false },
          { name: 'Proposal Sent', completed: true, isActive: false },
          { name: 'Negotiation', completed: false, isActive: true },
          { name: 'Closed Won', completed: false, isActive: false },
        ]}
        demoDate={moduleData.demoDate}
        dealInfo={moduleData.dealInfo}
      />
    </React.StrictMode>
  );
}

export { LeadStageTracker };
export default LeadStageTracker;
