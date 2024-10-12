import {
  Button,
  Modal,
  ModalContent,
  ModalHeader,
  ModalBody,
  ModalFooter,
} from "@nextui-org/react";

function Eliminar({ datos, isOpen, onOpenChange, delFicha }) {
  return (
    <>
      <Modal isOpen={isOpen} onOpenChange={onOpenChange} placement="top-center">
        <ModalContent>
          {(onClose) => (
            <>
              {datos && (
                <>
                  <ModalHeader>Eliminar {datos.name}</ModalHeader>

                  <ModalBody>
                    <p>
                      ¿Seguro de eliminar <strong>{datos.name}</strong>?
                    </p>
                  </ModalBody>

                  <ModalFooter>
                    <Button color="danger" variant="light" onPress={onClose}>
                      Cancelar
                    </Button>
                    <Button
                      color="primary"
                      onPress={() => {
                        delFicha(datos.id);
                      }}
                    >
                      Eliminar
                    </Button>
                  </ModalFooter>
                </>
              )}
            </>
          )}
        </ModalContent>
      </Modal>
    </>
  );
}

export default Eliminar;
